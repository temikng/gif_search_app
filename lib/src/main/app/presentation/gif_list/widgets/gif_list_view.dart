import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gif_search_app/src/main/app/presentation/gif_list/widgets/data_gif_list_view.dart';
import 'package:gif_search_app/src/main/app/presentation/gif_list/widgets/error_gif_list_view.dart';
import 'package:gif_search_app/src/main/app/presentation/gif_list/widgets/loading_gif_list_view.dart';
import 'package:gif_search_app/src/main/app/providers/search_gifs_params_provider.dart';
import 'package:gif_search_app/src/main/app/providers/search_gifs_providers.dart';
import 'package:gif_search_app/src/main/domain/entities/search_gifs.dart';

class GifListView extends ConsumerStatefulWidget {
  const GifListView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _GifListViewState();
}

class _GifListViewState extends ConsumerState<GifListView> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      _loadMoreGifs();
    }
  }

  void _loadMoreGifs() {
    ref.read(searchGifsProvider.notifier).fetchNextPage();
  }

  void _onSearchGifsParamsChanged(
    SearchGifsParams? prev,
    SearchGifsParams next,
  ) {
    if (prev?.query != next.query) {
      try {
        _scrollController.jumpTo(0);
      } catch (e) {}
    }
  }

  @override
  Widget build(BuildContext context) {
    final asyncSearchGifListState = ref.watch(searchGifsProvider);

    ref.listen(searchGifsParamsProvider, _onSearchGifsParamsChanged);

    return asyncSearchGifListState.when(
      loading: () => LoadingGifListView(),
      error: (error, stackTrace) => ErrorGifListView(error: error),
      data: (listState) =>
          DataGifListView(data: listState, scrollController: _scrollController),
    );
  }
}
