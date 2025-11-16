import 'package:gif_search_app/src/main/domain/entities/gif_id.dart';

class Gif {
  final GifId id;
  final String title;
  final String url;
  final String? previewUrl;

  const Gif({
    required this.id,
    required this.title,
    required this.url,
    required this.previewUrl,
  });
}
