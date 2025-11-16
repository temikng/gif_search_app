import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gif_search_app/src/main/app/providers/gif_repository_provider.dart';
import 'package:gif_search_app/src/main/domain/entities/gif.dart';
import 'package:gif_search_app/src/main/domain/entities/gif_id.dart';
import 'package:gif_search_app/src/main/domain/usecases/get_gif_by_id.dart';

final _getGifByIdUseCaseProvider = Provider<GetGifById>(
  (ref) => GetGifById(ref.read(gifRepositoryProvider)),
);

final getGifByIdProvider = FutureProvider.family<Gif, GifId>((
  ref,
  gifId,
) async {
  return ref.read(_getGifByIdUseCaseProvider)(gifId);
});
