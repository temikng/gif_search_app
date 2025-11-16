import 'package:gif_search_app/src/main/data/mappers/map_giphy_detail_response_model_to_gif_entity.dart';
import 'package:gif_search_app/src/main/data/remote_data_sources/giphy_service.dart';
import 'package:gif_search_app/src/main/domain/entities/gif.dart';
import 'package:gif_search_app/src/main/domain/entities/gif_id.dart';
import 'package:gif_search_app/src/main/domain/repositories/gif_repository.dart';

class GifRepositoryImpl implements GifRepository {
  final GiphyService _giphyService;

  GifRepositoryImpl(this._giphyService);

  @override
  Future<Gif> getById(GifId gifId) async {
    final serviceResponse = await _giphyService.getGifById(gifId);

    return mapGiphyDetailResponseModelToGifEntity(serviceResponse);
  }
}
