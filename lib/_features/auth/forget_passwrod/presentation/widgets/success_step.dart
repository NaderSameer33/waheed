import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/_features/auth/forget_passwrod/cubit/reset_pass_cubit.dart';
import 'package:waheed/_features/auth/forget_passwrod/cubit/reset_pass_state.dart';
import 'package:waheed/_features/auth/forget_passwrod/models/reset_pass_request.dart';
import 'package:waheed/core/func/helper_function.dart';
import 'package:waheed/core/services/cashe/cashe_helper.dart';
import '../../../../../core/extensions/navigator_extenstion.dart';
import '../../../../../core/extensions/sizedbox_extenstion.dart';
import '../../../../../core/router/app_route_name.dart';
import '../../../../../core/shared/widgets/app_button.dart';
import '../../../../../core/shared/widgets/app_input.dart';

class SuccessStep extends StatefulWidget {
  const SuccessStep({super.key});

  @override
  State<SuccessStep> createState() => _SuccessStepState();
}

class _SuccessStepState extends State<SuccessStep> {
  final passwordController = TextEditingController();
  final confirmPasswrodController = TextEditingController();
  final otpCode = CasheHelper().getOtpCode(key: 'otpCode');
  final email = CasheHelper().getUserEmail(key: 'forgetEmail');

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'كلمة المرور',
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          4.vs,
          AppInput(
            controller: passwordController,
            hintText: 'كلمة المرور',
            textInputType: TextInputType.visiblePassword,
            isPassword: true,
          ),
          16.vs,
          Text(
            'تاكيد كلمه المرور',
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          4.vs,
          AppInput(
            controller: confirmPasswrodController,
            textInputAction: TextInputAction.done,
            hintText: 'كلمة المرور',
            textInputType: TextInputType.visiblePassword,
            isPassword: true,
          ),
          40.vs,
          BlocConsumer<ResetPassCubit, ResetPassState>(
            listener: (context, state) {
              if (state is ResetPassStateSuccessState) {
                showSnakBar(context, text: state.message);
              } else if (state is ResetPassStateFailureState) {
                showSnakBar(context, text: state.errorMessage, isError: true);
                context.pushReplacment(page: AppRouteName.login);
              }
            },
            builder: (context, state) {
              return AppButton(
                isLoading: state is ResetPassStateLoadingState,
                onPressed: () {
                  context.read<ResetPassCubit>().resetPassword(
                    resetRequest: ResetPassRequest(
                      confirmPasswrod: confirmPasswrodController.text.trim(),
                      email: email,
                      otpCode: otpCode,
                      password: passwordController.text.trim(),
                    ),
                  );
                },

                title: 'تأكيد كلمة المرور الجديدة',
              );
            },
          ),
        ],
      ),
    );
  }
}
