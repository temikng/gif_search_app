import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gif_search_app/src/main/app/presentation/gif_detail/widgets/error_gif_detail_view.dart';
import 'package:gif_search_app/src/main/app/presentation/gif_detail/widgets/gif_detail_view.dart';
import 'package:gif_search_app/src/main/app/presentation/gif_detail/widgets/loading_gif_detail_view.dart';
import 'package:gif_search_app/src/main/app/providers/get_gif_by_id_provider.dart';
import 'package:gif_search_app/src/main/domain/entities/gif_id.dart';

class GifDetailScreenBody extends ConsumerWidget {
  final GifId gifId;

  const GifDetailScreenBody({super.key, required this.gifId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncGif = ref.watch(getGifByIdProvider(gifId));

    return Center(
      child: asyncGif.when(
        data: (gif) => GifDetailView(gif: gif),
        loading: () => LoadingGifDetailView(),
        error: (error, stack) => ErrorGifDetailView(error: error),
      ),
    );
  }
}
