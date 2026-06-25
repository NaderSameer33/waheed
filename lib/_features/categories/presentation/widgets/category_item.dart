import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/extensions/navigator_extenstion.dart';
import '../../../../core/extensions/sizedbox_extenstion.dart';
import '../../../../core/router/app_route_name.dart';
import '../../../../core/shared/utils/app_colors.dart';
import '../../../../core/shared/widgets/app_image.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.width});
  final double width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushName(page: AppRouteName.allProduct),
      child: Container(
        margin: EdgeInsets.only(bottom: 8.h, right: 16.w, left: 16.w),
        height: 56.h,
        width: width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 8.r),
              height: 40.h,
              width: 40.w,
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
              child: AppImage(image: 'suit.svg'),
            ),
            8.hs,
            Text(
              'بدلات',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14.sp,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
