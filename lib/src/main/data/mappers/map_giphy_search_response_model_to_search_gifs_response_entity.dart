import 'package:gif_search_app/src/main/data/mappers/map_gif_model_to_gif_entity.dart';
import 'package:gif_search_app/src/main/data/models/giphy_search_response.dart';
import 'package:gif_search_app/src/main/domain/entities/gif.dart';
import 'package:gif_search_app/src/main/domain/entities/search_gifs.dart';
import 'package:gif_search_app/src/shared/constants/search_gifs_constants.dart';

SearchGifsResponse mapGiphyResponseModelToSearchGifsResponseEntity(
  GiphySearchResponse response,
) {
  final hasNextPage =
      (response.pagination.offset + response.pagination.count) <
      response.pagination.totalCount;
  final pageNum = response.pagination.count > 0
      ? (response.pagination.offset / response.pagination.count).toInt()
      : defaultSearchPageNumParam;

  return SearchGifsResponse(
    items: response.data.map<Gif>(mapGifModelToGifEntity).toList(),
    hasNextPage: hasNextPage,
    pageNum: pageNum,
  );
}
