import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/_features/auth/forget_passwrod/cubit/forget_password_cubit.dart';
import 'package:waheed/_features/auth/forget_passwrod/cubit/forget_password_state.dart';
import 'package:waheed/core/func/helper_function.dart';
import 'package:waheed/core/services/cashe/cashe_helper.dart';
import '../../../../../core/extensions/sizedbox_extenstion.dart';
import '../../../../../core/shared/widgets/app_button.dart';
import '../../../../../core/shared/widgets/app_input.dart';

class EmailStep extends StatefulWidget {
  const EmailStep({
    super.key,
    required this.onSuccess,
  });
  final VoidCallback onSuccess;

  @override
  State<EmailStep> createState() => _EmailStepState();
}

class _EmailStepState extends State<EmailStep> {
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(24.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'نسيت كلمة المرور؟',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24.sp,
              ),
            ),
            8.vs,
            Text(
              'أدخل بريدك الإلكتروني لإرسال رمز تحقق اّمن.',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 16.sp,
              ),
            ),
            24.vs,
            Text(
              'البريد الإلكتروني',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            4.vs,
            AppInput(
              controller: emailController,
              hintText: 'Name@example.com',
              textInputType: TextInputType.emailAddress,
              prefixIcon: 'email.svg',
            ),
            40.vs,
            BlocConsumer<ForgetPasswordCubit, ForgetPasswordState>(
              listener: (context, state) {
                if (state is ForegetPasswrodSuccessState) {
                  showSnakBar(context, text: state.message);
                  widget.onSuccess();
                } else if (state is ForgetPasswordFailureState) {
                  showSnakBar(context, text: state.message, isError: true);
                }
              },
              builder: (context, state) {
                return AppButton(
                  onPressed: () {
                    CasheHelper().saveUserEmail(key: 'forgetEmail', value: emailController.text.trim()) ; 
                    context.read<ForgetPasswordCubit>().forgetPassword(
                      email: emailController.text.trim(),
                    );
                  },
                  isLoading: state is ForgetPasswordLoadingState,
                  title: 'إرسال رابط',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
