import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/core/extensions/sizedbox_extenstion.dart';
import 'package:waheed/core/shared/widgets/app_button.dart';
import 'package:waheed/core/shared/widgets/app_input_fild.dart';

class OtpStep extends StatelessWidget {
  const OtpStep({super.key, required this.onPressed});
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
              'رمز التحقق',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24.sp,
              ),
            ),
            8.vs,
            Text(
              'تم إرسال الرمز إلي Name@example.com',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 16.sp,
              ),
            ),
            24.vs,
            AppInputFild(),
            70.vs,
            AppButton(
              onPressed: onPressed, 
              title: 'تحقق ومتابعه',
            ),
          ],
        ),
      ),
    );
  }
}
