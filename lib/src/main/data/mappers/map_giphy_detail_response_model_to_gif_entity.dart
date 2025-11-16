import 'package:gif_search_app/src/main/data/mappers/map_gif_model_to_gif_entity.dart';
import 'package:gif_search_app/src/main/data/models/giphy_detail_response.dart';
import 'package:gif_search_app/src/main/domain/entities/gif.dart';

Gif mapGiphyDetailResponseModelToGifEntity(GiphyDetailResponse response) {
  return mapGifModelToGifEntity(response.data);
}
