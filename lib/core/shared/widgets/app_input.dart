import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/core/shared/utils/app_colors.dart';
import 'package:waheed/core/shared/widgets/app_image.dart';

class AppInput extends StatelessWidget {
  const AppInput({
    super.key,
    this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.textInputType,
    this.controller,
  });
  final String? hintText;
  final String? suffixIcon;
  final String? prefixIcon;
  final TextInputType? textInputType;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: textInputType,
      decoration: InputDecoration(
        prefixIcon: prefixIcon != null ? AppImage(image: prefixIcon!) : null,
        suffixIcon: suffixIcon != null ? AppImage(image: suffixIcon!) : null,
        hintStyle: TextStyle(
          color: AppColors.inputColor,
          fontWeight: FontWeight.w400,
          fontSize: 14.sp,
        ),
        hintText: hintText,
        border: buildBorder,
        focusedBorder: buildBorder,
        enabledBorder: buildBorder,
      ),
    );
  }
}

OutlineInputBorder get buildBorder => OutlineInputBorder(
  borderRadius: BorderRadius.circular(12.r),
  borderSide: BorderSide(color: AppColors.inputColor),
);
