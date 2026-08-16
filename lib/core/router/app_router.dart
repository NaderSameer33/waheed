import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waheed/_features/all_products/presentation/cubit/all_product_cubit.dart';
import 'package:waheed/_features/auth/forget_passwrod/cubit/forget_password_cubit.dart';
import 'package:waheed/_features/auth/forget_passwrod/cubit/reset_pass_cubit.dart';
import 'package:waheed/_features/auth/login/cubit/login_cubit.dart';
import 'package:waheed/_features/auth/otp/cubit/otp_cubit.dart';
import 'package:waheed/_features/auth/register/presentation/cubit/register_cubit.dart';
import 'package:waheed/_features/categories/cubit/category_cubit.dart';
import 'package:waheed/_features/categories/data/models/category_model.dart';
import 'package:waheed/_features/checkout/presentation/view/done_order_view.dart';
import 'package:waheed/core/router/app_page_router.dart';
import 'package:waheed/core/services/di/injection.dart';
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
  static Route? routeConfig(RouteSettings settings) {
    switch (settings.name) {
      case AppRouteName.splash:
        return AppPageRoute(
          settings: settings,
          page: SplashView(),
        );

      case AppRouteName.onBorading:
        return AppPageRoute(
          settings: settings,
          page: OnBoradingView(),
        );
      case AppRouteName.login:
        return AppPageRoute(
          settings: settings,
          page: BlocProvider(
            create: (context) => s1<LoginCubit>(),
            child: LoginView(),
          ),
        );
      case AppRouteName.register:
        return AppPageRoute(
          settings: settings,
          page: BlocProvider(
            create: (context) => s1<RegisterCubit>(),
            child: RegisterView(),
          ),
        );
      case AppRouteName.otp:
        return AppPageRoute(
          settings: settings,
          page: BlocProvider(
            create: (context) => s1<OtpCubit>(),
            child: OtpView(),
          ),
        );
      case AppRouteName.forgetPassword:
        return AppPageRoute(
          settings: settings,
          page: MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => s1<ResetPassCubit>()),
              BlocProvider(
                create: (context) => s1<ForgetPasswordCubit>(),
              ),
              BlocProvider(
                create: (context) => s1<OtpCubit>(),
              ),
            ],
            child: ForegetPasswordView(),
          ),
        );
      case AppRouteName.home:
        return AppPageRoute(
          settings: settings,
          page: MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => s1<AllProductCubit>(),
              ),
              BlocProvider(
                create: (context) => s1<CategoryCubit>()..getCategory(),
              ),
            ],
            child: HomeView(),
          ),
        );
      case AppRouteName.details:
        return AppPageRoute(
          settings: settings,
          page: HomeDetails(),
        );
      case AppRouteName.categoriy:
        final args = settings.arguments as CategoryArg;

        return AppPageRoute(
          settings: settings,
          page: BlocProvider(
            create: (context) => s1<AllProductCubit>(),
            child: CategoryView(
              id: args.id,
              name: args.name,
            ),
          ),
        );
      case AppRouteName.allProduct:
        return AppPageRoute(
          settings: settings,
          page: BlocProvider(
            create: (context) => s1<AllProductCubit>(),
            child: AllProductView(),
          ),
        );
      case AppRouteName.checkOut:
        return AppPageRoute(
          settings: settings,
          page: CheckOutView(),
        );
      case AppRouteName.doneOrder:
        return AppPageRoute(
          settings: settings,
          page: DoneOrderView(),
        );
    }
    return null;
  }
}
