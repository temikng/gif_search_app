import 'package:gif_search_app/src/main/domain/entities/search_gifs.dart';

abstract class PreviewGifsRepository {
  Future<SearchGifsResponse> searchGifs(SearchGifsParams params);
}
