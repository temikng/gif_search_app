import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gif_search_app/src/main/app/providers/giphy_service_provider.dart';
import 'package:gif_search_app/src/main/data/repositories/gif_repository.dart';
import 'package:gif_search_app/src/main/domain/repositories/gif_repository.dart';

final gifRepositoryProvider = Provider<GifRepository>(
  (ref) => GifRepositoryImpl(ref.read(giphyServiceProvider)),
);
