import 'package:flutter/material.dart';
import 'package:gif_search_app/src/shared/widgets/custom_progress_indicator.dart';

class LoadingGifListView extends StatelessWidget {
  const LoadingGifListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CustomProgressIndicator());
  }
}
