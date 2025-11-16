import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gif_search_app/src/main/app/models/search_gif_list_state.dart';
import 'package:gif_search_app/src/main/app/presentation/gif_list/widgets/error_loading_more_gifs_view.dart';
import 'package:gif_search_app/src/main/app/presentation/gif_list/widgets/loading_more_gifs_view.dart';
import 'package:gif_search_app/src/main/app/presentation/gif_list/widgets/preview_gif_item.dart';
import 'package:gif_search_app/src/main/app/providers/app_coordinator_provider.dart';
import 'package:gif_search_app/src/main/domain/entities/preview_gif.dart';

class DataGifListView extends ConsumerStatefulWidget {
  final SearchGifListState data;
  final ScrollController scrollController;

  const DataGifListView({
    super.key,
    required this.data,
    required this.scrollController,
  });

  @override
  ConsumerState<DataGifListView> createState() => _DataGifListViewState();
}

class _DataGifListViewState extends ConsumerState<DataGifListView> {
  void _onItemClick(PreviewGif gif) {
    ref.read(appCoordinatorProvider).goToGif(gif.id);
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: widget.scrollController,
      slivers: <Widget>[
        SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:
                MediaQuery.of(context).orientation == Orientation.portrait
                ? 2
                : 4,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          delegate: SliverChildBuilderDelegate((c, index) {
            final gif = widget.data.items[index];

            return PreviewGifItem(
              onTap: () => _onItemClick(gif),
              previewGif: gif,
            );
          }, childCount: widget.data.items.length),
        ),
        if (widget.data.hasNextPage)
          SliverToBoxAdapter(
            child: widget.data.error != null
                ? ErrorLoadingMoreGifsView(error: widget.data.error!)
                : LoadingMoreGifsView(),
          ),
      ],
    );
  }
}
