import 'package:gif_search_app/src/main/data/local_data_sources/gifs_local_storage.dart';
import 'package:gif_search_app/src/main/data/mappers/map_giphy_detail_response_model_to_gif_entity.dart';
import 'package:gif_search_app/src/main/data/remote_data_sources/giphy_service.dart';
import 'package:gif_search_app/src/main/domain/entities/gif.dart';
import 'package:gif_search_app/src/main/domain/entities/gif_id.dart';
import 'package:gif_search_app/src/main/domain/repositories/gif_repository.dart';

class GifRepositoryImpl implements GifRepository {
  final GifsLocalStorage _localDataSource;
  final GiphyService _remoteDataSource;

  GifRepositoryImpl(this._localDataSource, this._remoteDataSource);

  @override
  Future<Gif> getById(GifId gifId) async {
    final cached = await _localDataSource.getItem(gifId);

    if (cached != null) {
      return cached;
    }

    final serviceResponse = await _remoteDataSource.getGifById(gifId);

    return mapGiphyDetailResponseModelToGifEntity(serviceResponse);
  }
}
