import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:waheed/core/shared/utils/app_colors.dart';

class AppInputFild extends StatelessWidget {
  const AppInputFild({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: MaterialPinField(
          autoFocus: true,
          onCompleted: (value) {
            log(value.toString());
          },
          mainAxisAlignment: MainAxisAlignment.center,
          length: 6,
          theme: MaterialPinTheme(
            animationDuration: Duration(milliseconds: 500),
            entryAnimation: MaterialPinAnimation.scale,
            textStyle: TextStyle(
              color: Colors.black,
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ),
            focusedBorderColor: AppColors.borderColor,
            filledBorderColor: AppColors.borderColor,
            disabledBorderColor: AppColors.borderColor,
            filledFillColor: Colors.white,
            completeFillColor: Colors.white,
            focusedFillColor: Colors.white,
            fillColor: Colors.white,
            borderWidth: 1,
            spacing: 8.w,

            cursorAlignment: Alignment.center,
            cellSize: Size(43.w, 48.h),
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
      ),
    );
  }
}
