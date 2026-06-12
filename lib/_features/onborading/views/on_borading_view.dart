import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/core/extensions/navigator_extenstion.dart';
import 'package:waheed/core/extensions/sizedbox_extenstion.dart';
import 'package:waheed/core/router/app_route_name.dart';
import 'package:waheed/core/shared/app_button.dart';
import 'package:waheed/core/shared/app_image.dart';
import 'package:waheed/core/shared/shared_container.dart';

class OnBoradingView extends StatelessWidget {
  const OnBoradingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AppImage(
            image: 'on_borading.jpg',
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fill,
          ),

          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: ShardContainer(
              child: Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).padding.bottom,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    24.vs,
                    Text(
                      textAlign: TextAlign.center,
                      'إطلالة تليق بك',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 24.sp,
                      ),
                    ),
                    4.vs,
                    Text(
                      textAlign: TextAlign.center,
                      'تسوّق أو استأجر بدلتك المفضلة بخطوات بسيطة\n وتجربة فاخرة.',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                      ),
                    ),
                    16.vs,
                    FadeInRight(
                      duration: Duration(seconds: 1),
                      child: AppButton(
                        onPressed: () =>
                            context.pushReplacment(page: AppRouteName.login),
                        title: 'البدء الآن',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
