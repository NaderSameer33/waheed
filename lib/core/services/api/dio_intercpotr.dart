import 'dart:developer';

import 'package:dio/dio.dart';

class DioIntercpotr implements Interceptor {
  late Dio dio;
  DioIntercpotr(this.dio);

  @override
  void onError(DioException error, ErrorInterceptorHandler handler) {
    log(error.toString());
    handler.next(error);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    String token = '';
    dio.options.headers.addAll({'Authorization': 'Bearer $token'});
    log(options.data.toString());
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log(response.data.toString());
    handler.next(response);
  }
}
