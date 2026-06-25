import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/extensions/sizedbox_extenstion.dart';
import '../../../../core/shared/utils/app_colors.dart';
import '../../../../core/shared/widgets/app_image.dart';

class OrderBottomSheetInfo extends StatelessWidget {
  const OrderBottomSheetInfo({
    super.key,
    required this.title,
    required this.isActive,
  });
  final String title;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      margin: EdgeInsets.only(left: 8.r),
      height: 50.h,
      width: 177.w,
      decoration: BoxDecoration(
        color: isActive ? Colors.black : AppColors.scaffoldColor,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (isActive)
            AppImage(
              image: 'check.svg',
              color: Colors.white,
            ),
          8.hs,
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: isActive ? Colors.white : Color(0xff334155),
              fontSize: 15.sp,
            ),
          ),
        ],
      ),
    );
  }
}
