import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:waheed/core/constants/app_constant.dart';
import 'package:waheed/core/services/cashe/cashe_helper.dart';

class DioIntercpotr implements Interceptor {
  late Dio dio;
  DioIntercpotr(this.dio);

  @override
  void onError(DioException error, ErrorInterceptorHandler handler) {
    log(error.toString());
    handler.next(error);
  }

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    String token = await CasheHelper().getAccessToken(
      key: AppConstant.accessToken,
    );
    log('this token is $token');
    dio.options.headers.addAll({'Authorization': 'Bearer $token'});
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log(response.data.toString());
    handler.next(response);
  }
}
