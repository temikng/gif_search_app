import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gif_search_app/src/main/app/providers/search_gifs_params_provider.dart';
import 'package:gif_search_app/src/main/domain/entities/search_gifs.dart';
import 'package:gif_search_app/src/shared/constants/search_gifs_constants.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('searchGifsParamsProvider', () {
    test('initial state is correct', () {
      final container = ProviderContainer();
      addTearDown(container.dispose);

      final params = container.read(searchGifsParamsProvider);
      expect(params.query, defaultSearchQueryParam);
      expect(params.itemsByPage, defaultSearchItemsByPageParam);
      expect(params.pageNum, defaultSearchPageNumParam);
    });

    test('state can be updated', () {
      final container = ProviderContainer();
      addTearDown(container.dispose);

      final notifier = container.read(searchGifsParamsProvider.notifier);
      notifier.state = SearchGifsParams(
        query: 'test',
        itemsByPage: 10,
        pageNum: 1,
      );

      final params = container.read(searchGifsParamsProvider);
      expect(params.query, 'test');
      expect(params.itemsByPage, 10);
      expect(params.pageNum, 1);
    });
  });
}
