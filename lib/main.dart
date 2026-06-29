import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/core/services/cashe/cashe_helper.dart';
import 'package:waheed/core/services/di/injection.dart';
import 'core/constants/app_constant.dart';
import 'core/router/app_route_name.dart';
import 'core/router/app_router.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setUpInjection();
  await CasheHelper().initCashe() ; 
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

      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
        child: MaterialApp(
          onGenerateRoute: AppRouter.routeConfig,
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            fontFamily: AppConstant.appFontFamily,
          ),
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          locale: Locale('ar'),
          supportedLocales: [Locale('ar')],
          debugShowCheckedModeBanner: false,
          initialRoute: AppRouteName.splash,
        ),
      ),
    );
  }
}
