import 'package:gif_search_app/src/main/data/mappers/map_giphy_search_response_model_to_search_gifs_response_entity.dart';
import 'package:gif_search_app/src/main/data/remote_data_sources/giphy_service.dart';
import 'package:gif_search_app/src/main/domain/entities/search_gifs.dart';
import 'package:gif_search_app/src/main/domain/repositories/preview_gifs_repository.dart';

class PreviewGifsRepositoryImpl implements PreviewGifsRepository {
  final GiphyService _giphyService;

  PreviewGifsRepositoryImpl(this._giphyService);

  @override
  Future<SearchGifsResponse> searchGifs(SearchGifsParams params) async {
    final offset = params.pageNum * params.itemsByPage;
    final limit = params.itemsByPage;
    final serviceResponse = await _giphyService.searchGifs(
      query: params.query,
      offset: offset,
      limit: limit,
    );

    return mapGiphyResponseModelToSearchGifsResponseEntity(serviceResponse);
  }
}
