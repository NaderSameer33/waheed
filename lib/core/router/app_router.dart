import 'package:flutter/cupertino.dart';
import 'package:waheed/_features/auth/forget_passwrod/presentation/views/foreget_password_view.dart';
import 'package:waheed/_features/auth/login/presentation/views/login_view.dart';
import 'package:waheed/_features/auth/otp/presentation/views/otp_view.dart';
import 'package:waheed/_features/auth/register/presentation/views/register_view.dart';
import 'package:waheed/_features/home/presentation/views/home_view.dart';
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
      case AppRouteName.forgetPassword:
        return CupertinoPageRoute(
          builder: (context) => ForegetPasswordView(),
        );
      case AppRouteName.home:
        return CupertinoPageRoute(
          builder: (context) => HomeView(),
        );
    }
    return null;
  }
}
