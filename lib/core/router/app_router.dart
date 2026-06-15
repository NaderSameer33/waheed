import 'package:flutter/cupertino.dart';
import 'package:waheed/_features/auth/login/presentation/views/login_view.dart';
import 'package:waheed/_features/auth/otp/presentation/views/otp_view.dart';
import 'package:waheed/_features/auth/register/presentation/views/register_view.dart';
import 'package:waheed/_features/onborading/views/on_borading_view.dart';
import 'package:waheed/_features/splash/views/splash_view.dart';
import 'package:waheed/core/router/app_route_name.dart';

abstract class AppRouter {
  static Route? routeConfig(RouteSettings route) {
    switch (route.name) {
      case AppRouteName.splash:
        return CupertinoPageRoute(
          builder: (context) => SplashView(),
        );

      case AppRouteName.onBorading:
        return CupertinoPageRoute(
          builder: (context) => OnBoradingView(),
        );
      case AppRouteName.login:
        return CupertinoPageRoute(
          builder: (context) => LoginView(),
        );
      case AppRouteName.register:
        return CupertinoPageRoute(
          builder: (context) => RegisterView(),
        );
      case AppRouteName.otp:
        return CupertinoPageRoute(
          builder: (context) => OtpView(),
        );
    }
    return null;
  }
}
