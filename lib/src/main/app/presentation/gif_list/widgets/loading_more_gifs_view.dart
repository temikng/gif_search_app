import 'package:flutter/material.dart';
import 'package:gif_search_app/src/shared/widgets/custom_progress_indicator.dart';

class LoadingMoreGifsView extends StatelessWidget {
  const LoadingMoreGifsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: double.infinity,
      child: Center(child: CustomProgressIndicator()),
    );
  }
}
