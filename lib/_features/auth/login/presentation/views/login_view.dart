import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/core/extensions/sizedbox_extenstion.dart';
import 'package:waheed/core/shared/widgets/app_input.dart';
import 'package:waheed/core/shared/widgets/app_login_or_register.dart';
import 'package:waheed/core/shared/widgets/on_borading_auth_item.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoradingAuthItem(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).padding.bottom,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              24.vs,
              Text(
                textAlign: TextAlign.center,
                'تسجيل الدخول',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24.sp,
                ),
              ),
              4.vs,
              ApploginOrReginster(),
              16.vs,
              Text(
                'البريد الإلكتروني',
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              AppInput(
                hintText: 'Name@example.com',
                textInputType: TextInputType.emailAddress,
                prefixIcon: 'email.svg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
