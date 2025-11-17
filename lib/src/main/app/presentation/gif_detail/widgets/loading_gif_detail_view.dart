import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gif_search_app/src/shared/widgets/custom_progress_indicator.dart';

class LoadingGifDetailView extends ConsumerWidget {
  const LoadingGifDetailView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(child: CustomProgressIndicator());
  }
}
