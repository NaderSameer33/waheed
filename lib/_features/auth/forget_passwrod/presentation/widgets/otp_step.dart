import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/_features/auth/otp/cubit/otp_cubit.dart';
import 'package:waheed/_features/auth/otp/cubit/otp_state.dart';
import 'package:waheed/core/func/helper_function.dart';
import 'package:waheed/core/services/cashe/cashe_helper.dart';
import '../../../../../core/extensions/sizedbox_extenstion.dart';
import '../../../../../core/shared/widgets/app_button.dart';
import '../../../../../core/shared/widgets/app_input_fild.dart';

class OtpStep extends StatefulWidget {
  const OtpStep({
    super.key,
    required this.onPressed,
  });
  final VoidCallback onPressed;

  @override
  State<OtpStep> createState() => _OtpStepState();
}

class _OtpStepState extends State<OtpStep> {
  late String otpCode;
  final email = CasheHelper().getUserEmail(key: 'forgetEmail');

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(24.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'رمز التحقق',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24.sp,
              ),
            ),
            8.vs,
            Text(
              'تم إرسال الرمز إلي $email',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 16.sp,
              ),
            ),
            24.vs,
            AppInputFild(
              onchange: (value) {
                otpCode = value;
                CasheHelper().setOtpCode(key: 'otpCode', value: value) ;
              },
            ),
            70.vs,
            BlocConsumer<OtpCubit, OtpState>(
              listener: (context, state) {
                if (state is OtpSuccessState) {
                  showSnakBar(context, text: state.succesMessage);
                } else if (state is OtpFaliureState) {
                  showSnakBar(
                    context,
                    text: state.errorMessage,
                    isError: true,
                  );
                  widget.onPressed();
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
    );
  }
}
