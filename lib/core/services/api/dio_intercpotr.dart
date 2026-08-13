import 'package:dio/dio.dart';
import 'package:waheed/core/constants/app_constant.dart';
import 'package:waheed/core/services/cashe/cashe_helper.dart';

class DioInterceptor extends QueuedInterceptor {
  final Dio dio;
  final Dio _refreshDio;
  final _cache = CasheHelper();

  DioInterceptor(this.dio)
    : _refreshDio = Dio(BaseOptions(baseUrl: AppConstant.baseUrl));

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await _cache.getAccessToken(key: AppConstant.accessToken);
    if (token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode != 401) return handler.next(err);

    final failedToken = err.requestOptions.headers['Authorization']
        ?.toString()
        .replaceFirst('Bearer ', '');
    final currentToken = await _cache.getAccessToken(
      key: AppConstant.accessToken,
    );

    if (currentToken.isNotEmpty && currentToken != failedToken) {
      return _retry(err, currentToken, handler);
    }

    try {
      final refreshToken = await _cache.getRefreshToken(
        key: AppConstant.refreshToken,
      );
      if (refreshToken.isEmpty) return _logout(err, handler);

      final response = await _refreshDio.post(
        'api/Account/refresh-token',
        data: {'refreshToken': refreshToken},
      );

      final newAccess = response.data['token'] as String;

      _cache.savedAccessToken(
        key: AppConstant.accessToken,
        value: newAccess,
      );
      _cache.savedRefreshToken(
        key: AppConstant.refreshToken,
        value: response.data['refreshToken'],
      );

      return _retry(err, newAccess, handler);
    } on DioException catch (_) {
      return _logout(err, handler);
    } catch (_) {
      return _logout(err, handler);
    }
  }

  Future<void> _retry(
    DioException error,
    String token,
    ErrorInterceptorHandler handler,
  ) async {
    try {
      final options = error.requestOptions
        ..headers['Authorization'] = 'Bearer $token';
      handler.resolve(await dio.fetch(options));
    } on DioException catch (e) {
      handler.next(e);
    }
  }

  Future<void> _logout(
    DioException error,
    ErrorInterceptorHandler handler,
  ) async {
    await _cache.removeRefreshToke();
    await _cache.removeToken();
    handler.next(error);
  }
}
