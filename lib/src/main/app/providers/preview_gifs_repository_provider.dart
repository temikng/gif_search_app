import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gif_search_app/src/main/app/providers/gifs_local_storage_provider.dart';
import 'package:gif_search_app/src/main/app/providers/giphy_service_provider.dart';
import 'package:gif_search_app/src/main/data/repositories/preview_gifs_repository.dart';
import 'package:gif_search_app/src/main/domain/repositories/preview_gifs_repository.dart';

final previewGifsRepositoryProvider = Provider<PreviewGifsRepository>(
  (ref) => PreviewGifsRepositoryImpl(
    ref.read(gifsLocalStorageProvider),
    ref.read(giphyServiceProvider),
  ),
);
