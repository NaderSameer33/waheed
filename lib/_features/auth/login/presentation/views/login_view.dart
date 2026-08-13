import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/_features/auth/login/cubit/login_cubit.dart';
import 'package:waheed/_features/auth/login/cubit/login_state.dart';
import 'package:waheed/core/func/helper_function.dart';
import 'package:waheed/core/services/cashe/cashe_helper.dart';
import 'package:waheed/core/shared/utils/app_valdator.dart';
import '../widgets/login_with_social_item.dart';
import '../../../../../core/extensions/navigator_extenstion.dart';
import '../../../../../core/extensions/sizedbox_extenstion.dart';
import '../../../../../core/router/app_route_name.dart';
import '../../../../../core/shared/widgets/app_button.dart';
import '../../../../../core/shared/widgets/app_input.dart';
import '../../../../../core/shared/widgets/app_login_or_register.dart';
import '../../../../../core/shared/widgets/auth_divider.dart';
import '../../../../../core/shared/widgets/on_borading_auth_item.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final key = GlobalKey<FormState>();

  void _login() {
    if (key.currentState!.validate()) {
      context.read<LoginCubit>().login(
        email: emailController.text.trim(),
        passwrod: passwordController.text.trim(),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoradingAuthItem(
        height: 512.h,
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).padding.bottom + 20,
          ),
          child: Form(
            key: key,
            autovalidateMode: AutovalidateMode.always,
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
                ApploginOrReginster(
                  isLogin: true,
                ),
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
                  validator: AppValdator.emailValdator,
                  controller: emailController,
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
                  textInputAction: TextInputAction.done,
                  hintText: 'كلمة المرور',
                  textInputType: TextInputType.visiblePassword,
                  isPassword: true,
                  validator: AppValdator.passwordValdator,
                  controller: passwordController,
                ),
                8.vs,
                Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                    onPressed: () =>
                        context.pushName(page: AppRouteName.forgetPassword),
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
                BlocConsumer<LoginCubit, LoginState>(
                  listener: (context, state) {
                    if (state is LoginSuccessState) {
                      showSnakBar(context, text: state.succesMessage);
                      CasheHelper().setisAuth(value: true);
                      context.pushReplacment(page: AppRouteName.home);
                    } else if (state is LoginFailureState) {
                      showSnakBar(
                        context,
                        text: state.errorMessage,
                        isError: true,
                      );
                    }
                  },
                  builder: (context, state) {
                    return AppButton(
                      isLoading: state is LoginLoadingState,
                      onPressed: () => _login(),
                      title: 'تسجيل الدخول',
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
