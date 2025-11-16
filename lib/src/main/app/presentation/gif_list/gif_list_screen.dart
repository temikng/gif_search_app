import 'package:flutter/material.dart';
import 'package:gif_search_app/src/main/app/presentation/gif_list/widgets/gif_list_screen_body.dart';

class GifListScreen extends StatelessWidget {
  const GifListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Giphy Search')),
      body: GifListScreenBody(),
    );
  }
}
