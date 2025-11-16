import 'package:gif_search_app/src/main/domain/entities/search_gifs.dart';
import 'package:gif_search_app/src/main/domain/repositories/preview_gifs_repository.dart';

class SearchGifs {
  final PreviewGifsRepository _previewGifsRepository;

  SearchGifs(this._previewGifsRepository);

  Future<SearchGifsResponse> call(SearchGifsParams params) async {
    return _previewGifsRepository.searchGifs(params);
  }
}
