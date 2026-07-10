import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/_features/auth/register/data/models/register_request.dart';
import 'package:waheed/_features/auth/register/presentation/cubit/register_cubit.dart';
import 'package:waheed/_features/auth/register/presentation/cubit/register_state.dart';
import 'package:waheed/core/func/helper_function.dart';
import 'package:waheed/core/shared/utils/app_valdator.dart';
import '../../../login/presentation/widgets/login_with_social_item.dart';
import '../../../../../core/extensions/sizedbox_extenstion.dart';
import '../../../../../core/shared/widgets/app_button.dart';
import '../../../../../core/shared/widgets/app_input.dart';
import '../../../../../core/shared/widgets/app_login_or_register.dart';
import '../../../../../core/shared/widgets/auth_divider.dart';
import '../../../../../core/shared/widgets/on_borading_auth_item.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final key = GlobalKey<FormState>();
  final namecontorller = TextEditingController();
  final phoneContorller = TextEditingController();
  final emailController = TextEditingController();
  final passwrodController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  Future<void> onPressend() async {
    if (key.currentState!.validate()) {
      final request = RegisterRequest(
        name: namecontorller.text,
        email: emailController.text,
        confirmPasswrod: confirmPasswordController.text,
        passwrod: passwrodController.text,
        phoneNumber: phoneContorller.text,
      );
      if (passwrodController.text != confirmPasswordController.text) {
        showSnakBar(
          context,
          text: 'password not  match confirm password',
          isError: true,
        );
        return;
      }
      await context.read<RegisterCubit>().registerUser(request);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: key,
      autovalidateMode: AutovalidateMode.always,

      child: Scaffold(
        body: OnBoradingAuthItem(
          height: 746.h,
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
                  controller: namecontorller,
                  validator: AppValdator.nameValdator,
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
                  controller: phoneContorller,
                  validator: AppValdator.phoneValdator,
                  hintText: '+20102233558',
                  textInputType: TextInputType.phone,
                  prefixIcon: 'call.svg',
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
                  controller: emailController,
                  validator: AppValdator.emailValdator,
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
                  controller: passwrodController,
                  validator: AppValdator.passwordValdator,
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
                  controller: confirmPasswordController,
                  validator: AppValdator.confirmPasswordValdator,
                  textInputAction: TextInputAction.done,
                  hintText: 'كلمة المرور',
                  textInputType: TextInputType.visiblePassword,
                  isPassword: true,
                ),
                24.vs,
                BlocConsumer<RegisterCubit, RegisterState>(
                  listener: (context, state) {
                    if (state is RegisterSucccessState) {
                      showSnakBar(context, text: state.response.message);
                    } else if (state is RegisterFaliureState) {
                      showSnakBar(
                        context,
                        text: state.errorMessage,
                        isError: true,
                      );
                    }
                  },
                  builder: (context, state) {
                    return AppButton(
                      isLoading: state is RegisterLoadingState,
                      onPressed: onPressend,
                      title: 'إنشاء حساب',
                    );
                  },
                ),
                16.vs,
                AuthDivider(),
                16.vs,
                LoginWithSocialItem(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
