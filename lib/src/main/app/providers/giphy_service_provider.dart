import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gif_search_app/src/main/app/providers/api_client_provider.dart';
import 'package:gif_search_app/src/main/data/remote_data_sources/giphy_service.dart';

final giphyServiceProvider = Provider<GiphyService>(
  (ref) => GiphyService(
    apiClient: ref.read(apiClientProvider),
    baseUrl: dotenv.get('GIPHY_BASE_URL'),
    apiKey: dotenv.get('GIPHY_API_KEY'),
  ),
);
