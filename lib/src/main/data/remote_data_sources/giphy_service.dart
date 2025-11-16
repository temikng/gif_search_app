import 'package:dio/dio.dart';
import 'package:gif_search_app/src/main/data/models/giphy_detail_response.dart';
import 'package:gif_search_app/src/main/data/models/giphy_search_response.dart';
// import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class _GiphyApiKeyInterceptor extends Interceptor {
  final String apiKey;

  _GiphyApiKeyInterceptor({required this.apiKey});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters.addAll({'api_key': apiKey});

    handler.next(options);
  }
}

class GiphyService {
  final Dio apiClient;
  final String baseUrl;

  GiphyService({
    required this.apiClient,
    required this.baseUrl,
    required String apiKey,
  }) {
    // apiClient.interceptors.add(
    //   PrettyDioLogger(
    //     requestHeader: true,
    //     requestBody: true,
    //     responseBody: false,
    //     responseHeader: true,
    //     error: true,
    //     compact: true,
    //     maxWidth: 90,
    //   ),
    // );
    apiClient.interceptors.add(_GiphyApiKeyInterceptor(apiKey: apiKey));
  }

  Future<GiphySearchResponse> searchGifs({
    required String query,
    int offset = 0,
    int limit = 10,
  }) async {
    try {
      final path = '$baseUrl/${query.isEmpty ? 'trending' : 'search'}';
      final Map<String, dynamic> queryParameters = {
        'offset': offset,
        'limit': limit,
      };

      if (query.isNotEmpty) {
        queryParameters['q'] = query;
      }

      final response = await apiClient.get(
        path,
        queryParameters: queryParameters,
      );

      if (response.statusCode == 200) {
        return GiphySearchResponse.fromJson(response.data);
      } else {
        throw Exception('Failed to load GIFs: ${response.statusCode}');
      }
    } on DioException catch (e) {
      throw Exception('Failed to load GIFs: ${e.message}');
    }
  }

  Future<GiphyDetailResponse> getGifById(String gifId) async {
    try {
      final response = await apiClient.get('$baseUrl/$gifId');

      if (response.statusCode == 200) {
        return GiphyDetailResponse.fromJson(response.data);
      } else {
        throw Exception('Failed to load GIF: ${response.statusCode}');
      }
    } on DioException catch (e) {
      throw Exception('Failed to load GIF: ${e.message}');
    }
  }
}
