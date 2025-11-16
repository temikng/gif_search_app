import 'package:gif_search_app/src/main/domain/entities/gif_id.dart';

class PreviewGif {
  final GifId id;
  final String previewUrl;

  const PreviewGif({required this.id, required this.previewUrl});
}
