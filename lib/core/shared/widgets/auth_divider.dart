import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/core/extensions/sizedbox_extenstion.dart';
import 'package:waheed/core/shared/utils/app_colors.dart';

class AuthDivider extends StatelessWidget {
  const AuthDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: AppColors.borderColor,
          ),
        ),
        4.hs,
        Text(
          'أو تـــــــابــع بواسطة',
          style: TextStyle(
            color: AppColors.inputColor,
            fontWeight: FontWeight.w400,
            fontSize: 11.5.sp,
          ),
        ),
        4.hs,
        Expanded(
          child: Divider(
            color: AppColors.borderColor,
          ),
        ),
      ],
    );
  }
}
