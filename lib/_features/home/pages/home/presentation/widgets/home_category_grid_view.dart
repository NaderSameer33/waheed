import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/extensions/sizedbox_extenstion.dart';
import '../../../../../../core/shared/utils/app_colors.dart';
import '../../../../../../core/shared/widgets/app_image.dart';

class HomeCategoryGridView extends StatelessWidget {
  const HomeCategoryGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 4,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 151.w / 56.h,
        mainAxisSpacing: 8.r,
        crossAxisSpacing: 8.r,
      ),
      itemBuilder: (context, index) => Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.r),
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
