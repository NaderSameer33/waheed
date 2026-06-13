import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/core/extensions/sizedbox_extenstion.dart';
import 'package:waheed/core/shared/widgets/app_button.dart';
import 'package:waheed/core/shared/widgets/app_input.dart';
import 'package:waheed/core/shared/widgets/app_login_or_register.dart';
import 'package:waheed/core/shared/widgets/auth_divider.dart';
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
              4.vs,
              AppInput(
                hintText: 'Name@example.com',
                textInputType: TextInputType.emailAddress,
                prefixIcon: 'email.svg',
              ),
              8.vs,
              Text(
                'كلمة المرور',
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              4.vs,
              AppInput(
                hintText: 'كلمة المرور',
                textInputType: TextInputType.visiblePassword,
                isPassword: true,
              ),
              8.vs,
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'هل نسيت كلمة المرور ؟',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ),
              24.vs,
              AppButton(onPressed: () {}, title: 'تسجيل الدخول'),

              16.vs,
              AuthDivider(),
            ],
          ),
        ),
      ),
    );
  }
}
