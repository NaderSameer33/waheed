import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/extensions/navigator_extenstion.dart';
import '../../../core/extensions/sizedbox_extenstion.dart';
import '../../../core/router/app_route_name.dart';
import '../../../core/shared/widgets/app_image.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    _goToOnborading();
  }

  _goToOnborading() {
    Timer(
      Duration(seconds: 5),
      () => context.pushReplacment(page: AppRouteName.onBorading),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FadeIn(
          duration: Duration(seconds: 3),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppImage(
                image: 'splash.png',
              ),
              12.vs,
              Text(
                textAlign: TextAlign.center,
                'WAHEED HASSAN\nMEN’S SUITS',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 18.sp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
