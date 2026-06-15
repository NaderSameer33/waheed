import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/core/enums/forget_password_step.dart';
import 'package:waheed/core/extensions/sizedbox_extenstion.dart';
import 'package:waheed/core/shared/widgets/app_button.dart';
import 'package:waheed/core/shared/widgets/app_input.dart';

class EmailStep extends StatelessWidget {
  const EmailStep({super.key, required this.onPressed});
 final VoidCallback onPressed ;
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
              hintText: 'Name@example.com',
              textInputType: TextInputType.emailAddress,
              prefixIcon: 'email.svg',
            ),
            40.vs,
            AppButton(
              onPressed: onPressed ,
              title: 'إرسال رابط',
            ),
          ],
        ),
      ),
    );
  }
}
