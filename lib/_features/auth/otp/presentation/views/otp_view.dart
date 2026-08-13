import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/_features/auth/otp/cubit/otp_cubit.dart';
import 'package:waheed/_features/auth/otp/cubit/otp_state.dart';
import 'package:waheed/core/constants/app_constant.dart';
import 'package:waheed/core/func/helper_function.dart';
import 'package:waheed/core/services/cashe/cashe_helper.dart';
import '../../../../../core/extensions/navigator_extenstion.dart';
import '../../../../../core/router/app_route_name.dart';
import '../../../../../core/shared/widgets/app_button.dart';
import '../../../../../core/shared/widgets/app_input_fild.dart';
import '../../../../../core/extensions/sizedbox_extenstion.dart';
import '../../../../../core/shared/widgets/app_back.dart';
import '../../../../../core/shared/widgets/app_resend_code.dart';

class OtpView extends StatefulWidget {
  const OtpView({
    super.key,
  });

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
  final email = CasheHelper().getUserEmail(key: AppConstant.userEmail);
  String otpCode = '';

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
                CasheHelper().getUserEmail(key: AppConstant.userEmail),

                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                ),
              ),
              32.vs,
              AppInputFild(
                onchange: (vlaue) {
                  otpCode = vlaue;
                  setState(() {});
                },
              ),
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
              BlocConsumer<OtpCubit, OtpState>(
                listener: (context, state) {
                  if (state is OtpSuccessState) {
                    context.pushRemoveUtil(page: AppRouteName.login);
                    showSnakBar(context, text: state.succesMessage);
                  } else if (state is OtpFaliureState) {
                    showSnakBar(
                      context,
                      text: state.errorMessage,
                      isError: true,
                    );
                  }
                },
                builder: (context, state) {
                  return AppButton(
                    isLoading: state is OtpLoadingState,
                    onPressed: () => context.read<OtpCubit>().verifiyOtp(
                      email: email,
                      otpCode: otpCode,
                    ),
                    title: 'تحقق',
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
