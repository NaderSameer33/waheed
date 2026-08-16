import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:waheed/core/services/api/api_error.dart';

class ApiErrorHandler {
  ApiError handlerDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return const ApiError(
          message: 'انتهت مهلة الاتصال',
          descrption: 'يرجى التحقق من اتصالك بالإنترنت والمحاولة مرة أخرى.',
          iconData: CupertinoIcons.wifi_exclamationmark,
        );
      case DioExceptionType.sendTimeout:
        return const ApiError(
          message: 'انتهت مهلة الإرسال',
          descrption: 'استغرق الطلب وقتًا طويلاً للإرسال. يرجى المحاولة مرة أخرى.',
          iconData: CupertinoIcons.wifi_exclamationmark,
        );
      case DioExceptionType.receiveTimeout:
        return const ApiError(
          message: 'انتهت مهلة الاستجابة',
          descrption: 'استغرق الخادم وقتًا طويلاً للاستجابة. يرجى المحاولة مرة أخرى.',
          iconData: CupertinoIcons.wifi_exclamationmark,
        );
      case DioExceptionType.badCertificate:
        return const ApiError(
          message: 'خطأ في الأمان',
          descrption: 'تعذر التحقق من شهادة الخادم.',
          iconData: CupertinoIcons.lock_shield,
        );
      case DioExceptionType.badResponse:
        return _handleBadResponse(error);
      case DioExceptionType.cancel:
        return const ApiError(
          message: 'تم إلغاء الطلب',
          descrption: 'تم إلغاء هذا الطلب.',
          iconData: CupertinoIcons.xmark_circle,
        );
      case DioExceptionType.connectionError:
        return const ApiError(
          message: 'لا يوجد اتصال بالإنترنت',
          descrption: 'يرجى التحقق من اتصالك بالإنترنت والمحاولة مرة أخرى.',
          iconData: CupertinoIcons.wifi_slash,
        );
      case DioExceptionType.unknown:
        return const ApiError(
          message: 'حدث خطأ ما',
          descrption: 'حدث خطأ غير متوقع. يرجى المحاولة مرة أخرى.',
          iconData: CupertinoIcons.exclamationmark_triangle,
        );
    }
  }

  ApiError _handleBadResponse(DioException error) {
    final statusCode = error.response?.statusCode;
    final serverMessage = _extractServerMessage(error.response?.data);

    switch (statusCode) {
      case 400:
        return ApiError(
          message: 'طلب غير صالح',
          descrption: serverMessage ?? 'الطلب غير صالح.',
          iconData: CupertinoIcons.exclamationmark_circle,
        );
      case 401:
        return ApiError(
          message: 'غير مصرح',
          descrption: serverMessage ?? 'يرجى تسجيل الدخول مرة أخرى للمتابعة.',
          iconData: CupertinoIcons.lock,
        );
      case 403:
        return ApiError(
          message: 'ممنوع',
          descrption: serverMessage ?? 'ليس لديك صلاحية للقيام بذلك.',
          iconData: CupertinoIcons.lock_shield,
        );
      case 404:
        return ApiError(
          message: 'غير موجود',
          descrption: serverMessage ?? 'لم يتم العثور على المورد المطلوب.',
          iconData: CupertinoIcons.search,
        );
      case 422:
        return ApiError(
          message: 'خطأ في التحقق',
          descrption: serverMessage ?? 'يرجى التحقق من البيانات المدخلة والمحاولة مرة أخرى.',
          iconData: CupertinoIcons.exclamationmark_circle,
        );
      case 500:
      case 502:
      case 503:
        return ApiError(
          message: 'خطأ في الخادم',
          descrption: serverMessage ??
              'حدث خطأ ما من جانبنا. يرجى المحاولة مرة أخرى لاحقًا.',
          iconData: CupertinoIcons.exclamationmark_triangle,
        );
      default:
        return ApiError(
          message: 'خطأ غير متوقع',
          descrption: serverMessage ?? 'حدث خطأ غير متوقع. يرجى المحاولة مرة أخرى.',
          iconData: CupertinoIcons.exclamationmark_triangle,
        );
    }
  }

  String? _extractServerMessage(dynamic data) {
    if (data is Map<String, dynamic>) {
      final message = data['message'] ?? data['msg'] ?? data['error'];
      if (message is String && message.isNotEmpty) return message;
    }
    return null;
  }
}
