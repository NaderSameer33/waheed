import 'package:dio/dio.dart';

class DioErrorHandler {
   final String message;
  DioErrorHandler({ required this.message}) ; 

  factory DioErrorHandler.fromDio(DioException dioExc) {
    switch (dioExc.type) {
      case DioExceptionType.connectionTimeout:
       return DioErrorHandler(message: '') ; 
      case DioExceptionType.sendTimeout:
        // TODO: Handle this case.
        throw UnimplementedError();
      case DioExceptionType.receiveTimeout:
        // TODO: Handle this case.
        throw UnimplementedError();
      case DioExceptionType.badCertificate:
        // TODO: Handle this case.
        throw UnimplementedError();
      case DioExceptionType.badResponse:
      
        throw UnimplementedError();
      case DioExceptionType.cancel:
        // TODO: Handle this case.
        throw UnimplementedError();
      case DioExceptionType.connectionError:
        // TODO: Handle this case.
        throw UnimplementedError();
      case DioExceptionType.unknown:
        // TODO: Handle this case.
        throw UnimplementedError();
    }
  }
}
