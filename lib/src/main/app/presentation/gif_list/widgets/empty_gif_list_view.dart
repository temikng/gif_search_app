import 'package:flutter/widgets.dart';

class EmptyGifListView extends StatelessWidget {
  const EmptyGifListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Not found'));
  }
}
