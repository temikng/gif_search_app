import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gif_search_app/src/main/app/providers/get_gif_by_id_provider.dart';

class ErrorGifDetailView extends ConsumerWidget {
  final Object error;

  const ErrorGifDetailView({super.key, required this.error});

  void _reload(WidgetRef ref) {
    ref.invalidate(getGifByIdProvider);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Error receiving a specific gif: $error'),
        ElevatedButton(onPressed: () => _reload(ref), child: Text('reload')),
      ],
    );
  }
}
