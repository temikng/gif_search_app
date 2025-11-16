import 'package:gif_search_app/src/main/data/models/gif.dart';
import 'package:gif_search_app/src/main/domain/entities/preview_gif.dart';

PreviewGif mapGifModelToPreviewGifEntity(GifDTO gifDTO) {
  return PreviewGif(id: gifDTO.id, previewUrl: gifDTO.previewUrl ?? gifDTO.url);
}
