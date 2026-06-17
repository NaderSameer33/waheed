import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/extensions/navigator_extenstion.dart';
import '../../../../../core/extensions/sizedbox_extenstion.dart';
import '../../../../../core/router/app_route_name.dart';
import '../../../../../core/shared/widgets/app_button.dart';
import '../../../../../core/shared/widgets/app_input.dart';

class SuccessStep extends StatelessWidget {
  const SuccessStep({super.key});

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
            textInputAction: TextInputAction.done,
            hintText: 'كلمة المرور',
            textInputType: TextInputType.visiblePassword,
            isPassword: true,
          ),
          40.vs,
          AppButton(
            onPressed: () => context.pushReplacment(page: AppRouteName.login),
            title: 'تأكيد كلمة المرور الجديدة',
          ),
        ],
      ),
    );
  }
}
