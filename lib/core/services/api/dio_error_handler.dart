import 'package:dio/dio.dart';

class DioErrorHandler {
  final String message;
  DioErrorHandler({required this.message});

  factory DioErrorHandler.fromDio(DioException dioExc) {
    switch (dioExc.type) {
      case DioExceptionType.connectionTimeout:
        return DioErrorHandler(
          message: 'Connection timed out. Please check your internet connection and try again.',
        );
      case DioExceptionType.sendTimeout:
        return DioErrorHandler(
          message: 'Request timed out while sending data. Please try again.',
        );
      case DioExceptionType.receiveTimeout:
        return DioErrorHandler(
          message: 'Server took too long to respond. Please try again.',
        );
      case DioExceptionType.badCertificate:
        return DioErrorHandler(
          message: 'SSL certificate error. Please contact support.',
        );
      case DioExceptionType.badResponse:
        final statusCode = dioExc.response?.statusCode;
        final responseData = dioExc.response?.data?.toString() ?? '';
        return DioErrorHandler(
          message: responseData.isNotEmpty
              ? responseData
              : 'Server error (code: $statusCode). Please try again.',
        );
      case DioExceptionType.cancel:
        return DioErrorHandler(
          message: 'Request was cancelled. Please try again.',
        );
      case DioExceptionType.connectionError:
        return DioErrorHandler(
          message: 'No internet connection. Please check your network and try again.',
        );
      case DioExceptionType.unknown:
        return DioErrorHandler(
          message: dioExc.message ?? 'An unexpected error occurred. Please try again.',
        );
    }
  }
}
