import 'package:gif_search_app/src/main/data/mappers/map_gif_model_to_preview_gif_entity.dart';
import 'package:gif_search_app/src/main/data/models/giphy_search_response.dart';
import 'package:gif_search_app/src/main/domain/entities/preview_gif.dart';
import 'package:gif_search_app/src/main/domain/entities/search_gifs.dart';

SearchGifsResponse mapGiphyResponseModelToSearchGifsResponseEntity(
  GiphySearchResponse response,
) {
  final hasNextPage =
      (response.pagination.offset + response.pagination.count) <
      response.pagination.totalCount;
  final pageNum = (response.pagination.offset / response.pagination.count)
      .toInt();

  return SearchGifsResponse(
    items: response.data
        .map<PreviewGif>(mapGifModelToPreviewGifEntity)
        .toList(),
    hasNextPage: hasNextPage,
    pageNum: pageNum,
  );
}
