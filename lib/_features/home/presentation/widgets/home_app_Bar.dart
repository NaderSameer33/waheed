import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/extensions/sizedbox_extenstion.dart';
import '../../../../core/shared/utils/app_colors.dart';
import '../../../../core/shared/widgets/app_image.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      actionsPadding: EdgeInsets.symmetric(horizontal: 16.r),
      backgroundColor: Colors.white,
      leading: Container(
        margin: EdgeInsets.only(right: 16.r),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: BoxBorder.all(
            color: AppColors.borderColor,
            width: 1,
          ),
          color: Colors.white,
        ),
        child: AppImage(image: 'pin.svg'),
      ),
      actions: [
        Row(
          children: [
            Text(
              textAlign: TextAlign.center,
              'WAHEED HASSAN\nMEN’S SUITS',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 12.sp,
              ),
            ),
            12.hs,
            AppImage(
              image: 'splash.png',
              height: 32.h,
              width: 32.h,
            ),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56.h);
}
