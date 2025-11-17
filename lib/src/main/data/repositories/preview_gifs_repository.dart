import 'package:gif_search_app/src/main/data/local_data_sources/gifs_local_storage.dart';
import 'package:gif_search_app/src/main/data/mappers/map_giphy_search_response_model_to_search_gifs_response_entity.dart';
import 'package:gif_search_app/src/main/data/remote_data_sources/giphy_service.dart';
import 'package:gif_search_app/src/main/domain/entities/gif.dart';
import 'package:gif_search_app/src/main/domain/entities/search_gifs.dart';
import 'package:gif_search_app/src/main/domain/repositories/preview_gifs_repository.dart';

class PreviewGifsRepositoryImpl implements PreviewGifsRepository {
  final GifsLocalStorage _localDataSource;
  final GiphyService _remoteDataSource;

  PreviewGifsRepositoryImpl(this._localDataSource, this._remoteDataSource);

  @override
  Future<SearchGifsResponse> searchGifs(SearchGifsParams params) async {
    String cachingKey = params.query;
    String? lastCachingKey = await _localDataSource.getCachingKey();
    List<Gif>? cachedItems = lastCachingKey == cachingKey
        ? await _localDataSource.getItems()
        : null;
    final offset = params.pageNum * params.itemsByPage;
    final limit = params.itemsByPage;
    final serviceResponse = await _remoteDataSource.searchGifs(
      query: params.query,
      offset: offset,
      limit: limit,
    );

    final response = mapGiphyResponseModelToSearchGifsResponseEntity(
      serviceResponse,
    );
    final itemsForNewCache = cachedItems != null
        ? [...cachedItems, ...response.items]
        : response.items;

    await _localDataSource.setCachingKey(cachingKey);
    await _localDataSource.setItems(itemsForNewCache);

    return response.copyWith(items: itemsForNewCache);
  }
}
