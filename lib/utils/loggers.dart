import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Logger {
  static logResponse(dynamic response) {
    debugPrint(
        "<-- ${response.statusCode} ${(response.request.baseUrl + response.request.path ?? 'URL')}");
    debugPrint("Headers:");
    response.headers?.forEach((k, v) => debugPrint('$k: $v'));
    debugPrint("Response: ${response.data}");
    debugPrint("<-- END HTTP");
  }

  static logError(DioError dioError) {
    debugPrint(
        "<-- ${dioError.message} ${dioError.response?.requestOptions.path}");
    debugPrint(
        "${dioError.response != null ? dioError.response?.data : 'Unknown Error'}");
    debugPrint("<-- End error");
  }

  static logRequest(RequestOptions options) {
    debugPrint(
        "--> ${options.method != null ? options.method.toUpperCase() : 'METHOD'} ${"" + (options.baseUrl) + (options.path)}");
    debugPrint("Headers:");
    debugPrint("URL : ${options.uri}");
    options.headers.forEach((k, v) => debugPrint('$k: $v'));
    if (options.queryParameters != null) {
      debugPrint("queryParameters:");
      options.queryParameters.forEach((k, v) => debugPrint('$k: $v'));
    }
    if (options.data != null) {
      debugPrint("Body: ${options.data}");
    }
    debugPrint(
        "--> END ${options.method != null ? options.method.toUpperCase() : 'METHOD'}");
  }
}
