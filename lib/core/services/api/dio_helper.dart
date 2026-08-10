import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:waheed/core/constants/app_constant.dart';
import 'package:waheed/core/services/api/dio_intercpotr.dart';

class DioHelper {
  static Dio? dio;

  static void initDio() {
    dio ??= Dio(
      BaseOptions(
        baseUrl: AppConstant.baseUrl,
        connectTimeout: const Duration(seconds: 20),
        sendTimeout: const Duration(seconds: 20),
        receiveTimeout: const Duration(seconds: 20),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    dio!.interceptors.addAll([
      DioIntercpotr(dio!),
      PrettyDioLogger(
        responseBody: true,
        request: true,
        requestBody: true,
        requestHeader: true,
        responseHeader: true,

        error: true,
      ),
    ]);
  }

  static Future<Response> getData({
    required String endPoint,
    Map<String, dynamic>? queryParamter,
  }) async {
    return await dio!.get(
      endPoint,
      queryParameters: queryParamter,
    );
  }

  static Future<Response> sendData({
    required String endPoint,
    Map<String, dynamic>? data,
  }) async {
    return await dio!.post(
      endPoint,
      data: data,
    );
  }
}
