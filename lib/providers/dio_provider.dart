// 86cc5e71-dd81-4814-92e4-c5072e7d0044

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starter_app/utils/constants.dart';
import 'package:starter_app/utils/loggers.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio(BaseOptions(
    baseUrl: AppConstants.CMC_BASE_URL,
    headers: {
      'X-CMC_PRO_API_KEY': '86cc5e71-dd81-4814-92e4-c5072e7d0044'
    }
  ));
  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (RequestOptions options, handler) async {
        Logger.logRequest(options);
        handler.next(options);
      },
      onResponse: (response, handler) {
        // Logger.logResponse(response);
        handler.resolve(response);
      },
      onError: (DioError dioError, handler) async {
        Logger.logError(dioError);
        handler.next(dioError);
      },
    ),
  );
  return dio;
});