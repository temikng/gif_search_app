import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gif_search_app/src/main/data/local_data_sources/gifs_local_storage.dart';

final gifsLocalStorageProvider = Provider<GifsLocalStorage>(
  (_) => MemoryGifsLocalStorage(),
);
