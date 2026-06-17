import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../forget_passwrod/presentation/widgets/email_step.dart';
import '../../../forget_passwrod/presentation/widgets/otp_step.dart';
import '../../../forget_passwrod/presentation/widgets/success_step.dart';
import '../../../../../core/enums/forget_password_step.dart';
import '../../../../../core/extensions/navigator_extenstion.dart';
import '../../../../../core/router/app_route_name.dart';
import '../../../../../core/shared/widgets/app_button.dart';
import '../../../../../core/shared/widgets/app_input_fild.dart';
import '../../../../../core/extensions/sizedbox_extenstion.dart';
import '../../../../../core/shared/widgets/app_back.dart';
import '../../../../../core/shared/widgets/app_resend_code.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AppBack(),
              32.vs,
              Text(
                textAlign: TextAlign.center,
                'تأكيد البريد الإلكتروني',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24.sp,
                ),
              ),
              7.vs,
              Text(
                textAlign: TextAlign.center,
                'ادخل رمز التحقق المرسل إلي  ',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                ),
              ),
              Text(
                textAlign: TextAlign.center,
                'nadersam33r@gmail.com',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                ),
              ),
              32.vs,
              AppInputFild(),
              50.vs,
              Text(
                textAlign: TextAlign.center,
                'لم تستلم الرمز ؟',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                ),
              ),
              10.vs,
              AppResendCode(),
              60.vs,
              AppButton(
                onPressed: () =>
                    context.pushReplacment(page: AppRouteName.login),
                title: 'تحقق',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
