import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gif_search_app/src/main/app/models/search_gif_list_state.dart';
import 'package:gif_search_app/src/main/app/providers/preview_gifs_repository_provider.dart';
import 'package:gif_search_app/src/main/app/providers/search_gifs_params_provider.dart';
import 'package:gif_search_app/src/main/domain/usecases/search_gifs.dart';
import 'package:gif_search_app/src/shared/constants/search_gifs_constants.dart';

final _searchGifsUseCaseProvider = Provider(
  (ref) => SearchGifs(ref.read(previewGifsRepositoryProvider)),
);

final searchGifsProvider =
    AsyncNotifierProvider<SearchGifsNotifier, SearchGifListState>(
      () => SearchGifsNotifier(),
    );

class SearchGifsNotifier extends AsyncNotifier<SearchGifListState> {
  @override
  Future<SearchGifListState> build() async {
    final params = ref.read(searchGifsParamsProvider);

    return ref
        .read(_searchGifsUseCaseProvider)(params)
        .then(
          (pageData) => SearchGifListState(
            items: pageData.items,
            hasNextPage: pageData.hasNextPage,
            error: null,
          ),
        );
  }

  Future<void> fetchNextPage() async {
    final currentState = state.value;

    if (currentState == null ||
        currentState.isLoadingMore ||
        !currentState.hasNextPage) {
      return;
    }

    state = AsyncValue.data(
      currentState.copyWith(isLoadingMore: true, error: null),
    );

    try {
      final params = ref.read(searchGifsParamsProvider);
      final nextPageParams = params.copyWith(pageNum: params.pageNum + 1);
      final pageData = await ref.read(_searchGifsUseCaseProvider)(
        nextPageParams,
      );

      state = AsyncValue.data(
        currentState.copyWith(
          items: pageData.items,
          hasNextPage: pageData.hasNextPage,
          isLoadingMore: false,
        ),
      );

      ref.read(searchGifsParamsProvider.notifier).state = nextPageParams;
    } catch (e, _) {
      state = AsyncValue.data(
        currentState.copyWith(isLoadingMore: false, error: e),
      );
    }
  }

  Future<void> refresh() async {
    final params = ref.read(searchGifsParamsProvider);
    final refreshedParams = params.copyWith(pageNum: defaultSearchPageNumParam);
    ref.read(searchGifsParamsProvider.notifier).state = refreshedParams;
    ref.invalidateSelf();

    await future;
  }
}
