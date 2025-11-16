import 'package:gif_search_app/src/main/data/models/gif.dart';
import 'package:gif_search_app/src/main/domain/entities/gif.dart';

Gif mapGifModelToGifEntity(GifDTO gifDTO) {
  return Gif(
    id: gifDTO.id,
    title: gifDTO.title,
    url: gifDTO.url,
    previewUrl: gifDTO.previewUrl,
  );
}
