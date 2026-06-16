import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/core/extensions/navigator_extenstion.dart';
import 'package:waheed/core/shared/utils/app_colors.dart';
import 'package:waheed/core/shared/widgets/app_image.dart';

class AppBack extends StatelessWidget {
  const AppBack({super.key, this.onPressed, this.rightSpacing});
  final VoidCallback? onPressed;
  final double? rightSpacing;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: EdgeInsets.only(right: rightSpacing ?? 0),
        height: 48.h,
        width: 48.w,
        decoration: BoxDecoration(
          border: BoxBorder.all(
            width: 1,
            color: AppColors.borderColor,
          ),
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 1),
              blurRadius: 4,
              spreadRadius: 1,
              color: Color(0xff000000).withValues(alpha: .06),
            ),
          ],
        ),
        child: IconButton(
          onPressed: onPressed ?? () => context.popName(),
          icon: AppImage(image: 'arrow_back.svg'),
        ),
      ),
    );
  }
}
