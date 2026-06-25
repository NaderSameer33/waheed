import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_image.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.icon,
    this.color,
    this.titleColor , 
    this.iconColor , 
  });
  final VoidCallback onPressed;
  final String title;
  final String? icon;
  final Color? color;
  final Color? titleColor;
  final Color ? iconColor; 
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        backgroundColor: color ?? Colors.black,
        alignment: Alignment.center,
        fixedSize: Size.fromHeight(56.h),
      ),
      onPressed: onPressed,
      icon: AppImage(image: icon ?? '' , color: iconColor,),
      label: Text(
        title,
        style: TextStyle(
          color: titleColor ?? Colors.white,
          fontSize: 14.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
