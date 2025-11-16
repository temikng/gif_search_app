import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gif_search_app/src/shared/constants/api_client_constants.dart';

final apiClientProvider = Provider<Dio>((_) {
  final dio = Dio(
    BaseOptions(
      connectTimeout: Duration(seconds: connectTimeoutDurationSec),
      receiveTimeout: Duration(seconds: receiveTimeoutDurationSec),
    ),
  );

  return dio;
});
