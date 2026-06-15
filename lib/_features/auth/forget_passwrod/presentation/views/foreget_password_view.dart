import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/_features/auth/forget_passwrod/presentation/widgets/email_step.dart';
import 'package:waheed/_features/auth/forget_passwrod/presentation/widgets/forget_pass_indecatore.dart';
import 'package:waheed/_features/auth/forget_passwrod/presentation/widgets/otp_step.dart';
import 'package:waheed/_features/auth/forget_passwrod/presentation/widgets/success_step.dart';
import 'package:waheed/core/enums/forget_password_step.dart';
import 'package:waheed/core/extensions/sizedbox_extenstion.dart';
import 'package:waheed/core/shared/utils/app_colors.dart';
import 'package:waheed/core/shared/widgets/app_back.dart';

class ForegetPasswordView extends StatefulWidget {
  const ForegetPasswordView({super.key});

  @override
  State<ForegetPasswordView> createState() => _ForegetPasswordViewState();
}

class _ForegetPasswordViewState extends State<ForegetPasswordView> {
  ForgetPasswordStep currentStep = ForgetPasswordStep.email;
  Widget _buildCurrentStep() {
    switch (currentStep) {
      case ForgetPasswordStep.email:
        return EmailStep(
          onPressed: () {
            setState(() {
              currentStep = ForgetPasswordStep.otp;
            });
          },
          key: ValueKey('email'),
        );
      case ForgetPasswordStep.otp:
        return OtpStep(
          onPressed: () {
            setState(() {
              currentStep = ForgetPasswordStep.success;
            });
          },
          key: ValueKey('otp'),
        );
      case ForgetPasswordStep.success:
        return SuccessStep(
          key: ValueKey('success'),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.r),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  AppBack(),
                  Spacer(),
                  Text(
                    'نسيت كلمة المرور',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
                ],
              ),

              32.vs,
              Text(
                'خطوة 1/ 3',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                ),
              ),
              12.vs,
              ForgetPassIndecatore(),
              24.vs,
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: AppColors.borderColor,
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 2),
                      blurRadius: 2,
                      spreadRadius: 0,
                      color: Color(0xff000000).withValues(alpha: .06),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(24.r),
                  color: Colors.white,
                ),
                child: AnimatedSwitcher(
                  duration: Duration(milliseconds: 500),
                  child: _buildCurrentStep(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
