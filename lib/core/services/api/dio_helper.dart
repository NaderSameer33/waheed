import 'package:dio/dio.dart';

class DioHelper {
  final Dio dio;
   DioHelper(this.dio);

  Future<Response> getData({
    required String endPoint,
    Map<String, dynamic>? queryParamter,
  }) async {
    return await dio.get(endPoint, queryParameters: queryParamter);
  }
  Future<Response> sendData({
    required String endPoint,
    Map<String, dynamic>? data,
  }) async {
    return await dio.post(endPoint, data: data);
  }
}
