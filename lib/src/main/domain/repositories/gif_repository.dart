import 'package:gif_search_app/src/main/domain/entities/gif.dart';
import 'package:gif_search_app/src/main/domain/entities/gif_id.dart';

abstract class GifRepository {
  Future<Gif> getById(GifId gifId);
}
