import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/app_colors.dart';
import 'app_back.dart';
import 'app_image.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, this.action, required this.title});
  final List<Widget>? action;
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 18.sp,
          color: Colors.black,
        ),
      ),
      leading: AppBack(
        rightSpacing: 16.r,
      ),
      actions:
          action ??
          [
            Container(
              height: 48.h,
              width: 48.w,
              margin: EdgeInsets.only(left: 16.r),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: BoxBorder.all(
                  color: AppColors.borderColor,
                  width: 1,
                ),
                color: Colors.white,
              ),
              child: AppImage(image: 'cart.svg'),
            ),
          ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56.h);
}
