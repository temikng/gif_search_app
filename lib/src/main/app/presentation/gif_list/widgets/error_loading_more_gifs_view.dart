import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gif_search_app/src/main/app/providers/search_gifs_providers.dart';

class ErrorLoadingMoreGifsView extends ConsumerWidget {
  final Object error;

  const ErrorLoadingMoreGifsView({super.key, required this.error});

  void _reload(WidgetRef ref) {
    ref.invalidate(searchGifsProvider);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 120,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Error getting the gif list: $error'),
          ElevatedButton(onPressed: () => _reload(ref), child: Text('reload')),
        ],
      ),
    );
  }
}
