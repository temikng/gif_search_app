import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gif_search_app/src/shared/constants/search_gifs_constants.dart';
import 'package:gif_search_app/src/shared/utils/debouncer.dart';
import 'package:gif_search_app/src/main/app/providers/search_gifs_providers.dart';
import 'package:gif_search_app/src/main/domain/entities/search_gifs.dart';

final searchGifsParamsProvider = StateProvider<SearchGifsParams>(
  (ref) => SearchGifsParams(
    query: defaultSearchQueryParam,
    itemsByPage: defaultSearchItemsByPageParam,
    pageNum: defaultSearchPageNumParam,
  ),
);

final debouncedQuerySearchGifsParamsProvider = Provider((ref) {
  final debouncer = Debouncer(
    milliseconds: defaultSearchQueryDebouncerDurationMS,
  );

  ref.onDispose(debouncer.dispose);

  return (String query) {
    debouncer.run(() {
      ref.read(searchGifsParamsProvider.notifier).state = ref
          .read(searchGifsParamsProvider.notifier)
          .state
          .copyWith(query: query);
      ref.read(searchGifsProvider.notifier).refresh();
    });
  };
});
