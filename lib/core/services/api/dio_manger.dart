import 'package:dio/dio.dart';
import 'package:waheed/core/constants/app_constant.dart';
import 'package:waheed/core/services/api/dio_intercpotr.dart';

class DioManger {
  late Dio dio;
  DioManger() : dio = Dio();

  Dio initDio() {
    dio.options
      ..connectTimeout = Duration(seconds: 10)
      ..sendTimeout = Duration(seconds: 10)
      ..receiveTimeout = Duration(seconds: 10)
      ..baseUrl = AppConstant.baseUrl;

    dio.interceptors.add(DioIntercpotr(dio));

    return dio;
  }
}
