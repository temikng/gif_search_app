import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gif_search_app/src/main/app/presentation/gif_detail/widgets/gif_detail_screen_body.dart';
import 'package:gif_search_app/src/main/domain/entities/gif_id.dart';

class GifDetailScreen extends ConsumerWidget {
  final GifId gifId;

  const GifDetailScreen({super.key, required this.gifId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('GIF Detail')),
      body: GifDetailScreenBody(gifId: gifId),
    );
  }
}
