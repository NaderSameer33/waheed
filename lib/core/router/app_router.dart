import 'package:flutter/cupertino.dart';
import '../../_features/all_products/presentation/views/all_product_view.dart';
import '../../_features/categories/presentation/views/category_view.dart';
import '../../_features/checkout/presentation/view/check_out.dart';
import '../../_features/auth/forget_passwrod/presentation/views/foreget_password_view.dart';
import '../../_features/auth/login/presentation/views/login_view.dart';
import '../../_features/auth/otp/presentation/views/otp_view.dart';
import '../../_features/auth/register/presentation/views/register_view.dart';
import '../../_features/home_details/presentation/view/home_details.dart';
import '../../_features/home/presentation/views/home_view.dart';
import '../../_features/onborading/views/on_borading_view.dart';
import '../../_features/splash/views/splash_view.dart';
import 'app_route_name.dart';

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
      case AppRouteName.details:
        return CupertinoPageRoute(
          builder: (context) => HomeDetails(),
        );
      case AppRouteName.categoriy:
        return CupertinoPageRoute(
          builder: (context) => CategoryView(),
        );
      case AppRouteName.allProduct:
        return CupertinoPageRoute(
          builder: (context) => AllProductView(),
        );
      case AppRouteName.checkOut:
        return CupertinoPageRoute(
          builder: (context) => CheckOutView(),
        );
    }
    return null;
  }
}
