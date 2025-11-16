import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gif_search_app/src/shared/widgets/custom_progress_indicator.dart';
import 'package:gif_search_app/src/main/domain/entities/preview_gif.dart';

class PreviewGifItem extends ConsumerWidget {
  final PreviewGif previewGif;
  final Function() onTap;

  const PreviewGifItem({
    super.key,
    required this.previewGif,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: onTap,
      child: CachedNetworkImage(
        imageUrl: previewGif.previewUrl,
        placeholder: (context, url) => const _PlaceholderPreviewGifItem(),
        errorWidget: (context, url, error) =>
            _ErrorPreviewGifItem(error: error),
        fit: BoxFit.cover,
      ),
    );
  }
}

class _PlaceholderPreviewGifItem extends StatelessWidget {
  const _PlaceholderPreviewGifItem();

  @override
  Widget build(BuildContext context) {
    return const Center(child: CustomProgressIndicator());
  }
}

class _ErrorPreviewGifItem extends StatelessWidget {
  final Object error;

  const _ErrorPreviewGifItem({required this.error});

  @override
  Widget build(BuildContext context) {
    return const Icon(Icons.error);
  }
}
