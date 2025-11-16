import 'package:gif_search_app/src/main/domain/entities/gif.dart';
import 'package:gif_search_app/src/main/domain/entities/gif_id.dart';
import 'package:gif_search_app/src/main/domain/repositories/gif_repository.dart';

class GetGifById {
  final GifRepository _gifRepository;

  GetGifById(this._gifRepository);

  Future<Gif> call(GifId gifId) async {
    return _gifRepository.getById(gifId);
  }
}
