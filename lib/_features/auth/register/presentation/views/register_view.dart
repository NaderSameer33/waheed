import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/_features/auth/login/presentation/widgets/login_with_social_item.dart';
import 'package:waheed/core/extensions/sizedbox_extenstion.dart';
import 'package:waheed/core/shared/widgets/app_button.dart';
import 'package:waheed/core/shared/widgets/app_input.dart';
import 'package:waheed/core/shared/widgets/app_login_or_register.dart';
import 'package:waheed/core/shared/widgets/auth_divider.dart';
import 'package:waheed/core/shared/widgets/on_borading_auth_item.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoradingAuthItem(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).padding.bottom + 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              24.vs,
              Text(
                textAlign: TextAlign.center,
                'انشاء حساب',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24.sp,
                ),
              ),
              4.vs,
              ApploginOrReginster(),
              16.vs,
              Text(
                'الاسم بالكامل',
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              4.vs,
              AppInput(
                hintText: 'اكتب اسمك الكامل',
                textInputType: TextInputType.name,
                prefixIcon: 'profile.svg',
              ),
              4.vs,
              Text(
                'رقم الهاتف',
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              4.vs,
              AppInput(
                hintText: '+20102233558',
                textInputType: TextInputType.phone,
                prefixIcon: 'profile.svg',
              ),
              4.vs,
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
              4.vs,
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
              4.vs,
              Text(
                'تاكيد كلمه المرور',
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
              24.vs,
              AppButton(onPressed: () {}, title: 'إنشاء حساب'),
              16.vs,
              AuthDivider(),
              16.vs,
              LoginWithSocialItem(),
            ],
          ),
        ),
      ),
    );
  }
}
