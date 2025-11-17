import 'package:gif_search_app/src/main/domain/entities/gif.dart';
import 'package:gif_search_app/src/main/domain/entities/gif_id.dart';

abstract class GifsLocalStorage {
  Future<String?> getCachingKey();
  Future<void> setCachingKey(String key);
  Future<void> setItems(List<Gif> items);
  Future<Gif?> getItem(GifId gifId);
  Future<List<Gif>> getItems();
  Future<void> clean();
}

class MemoryGifsLocalStorage implements GifsLocalStorage {
  String? _cachingKey;
  List<Gif> _memory = [];

  @override
  Future<String?> getCachingKey() async {
    return _cachingKey;
  }

  @override
  Future<void> setCachingKey(String key) async {
    _cachingKey = key;
  }

  @override
  Future<void> setItems(List<Gif> items) async {
    _memory = items;
  }

  @override
  Future<Gif?> getItem(GifId gifId) async {
    final filtered = _memory.where((item) => item.id == gifId);

    if (filtered.isNotEmpty) {
      return filtered.first;
    }

    return null;
  }

  @override
  Future<List<Gif>> getItems() async {
    return _memory;
  }

  @override
  Future<void> clean() async {
    _memory = [];
  }
}
