import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/_features/splash/views/splash_view.dart';
import 'package:waheed/core/constants/app_constant.dart';
import 'package:waheed/core/router/app_route_name.dart';
import 'package:waheed/core/router/app_router.dart';

void main() {
  runApp(const WaheedApp());
}

class WaheedApp extends StatelessWidget {
  const WaheedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(402, 874),
      minTextAdapt: true,
      splitScreenMode: true,

      child: MaterialApp(
        onGenerateRoute: AppRouter.routeConfig,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          fontFamily: AppConstant.appFontFamily,
        ),
        locale: Locale('ar'),
        supportedLocales: [Locale('ar')],
        debugShowCheckedModeBanner: false,
        initialRoute: AppRouteName.splash,
      ),
    );
  }
}
