import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../extensions/sizedbox_extenstion.dart';
import '../../func/helper_function.dart';
import 'app_input.dart';
import '../utils/app_colors.dart';
import 'app_back.dart';
import 'app_image.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,

    required this.title,
    this.isAction = false,
    this.isSearch = true,
    this.height = 0,
    this.isBack = true, this.onPressed 
  });
 final VoidCallback ? onPressed ;
  final String title;
  final bool isAction, isSearch , isBack ;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 30.h,
        right: 16.w,
        left: 16.w,
      ),
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Row(
            children: [
              if(isBack)
              AppBack(onPressed: onPressed,),
              Spacer(),
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18.sp,
                  color: Colors.black,
                ),
              ),
              Spacer(),
              isAction
                  ? Container(
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
                      child: AppImage(
                        image: 'cart.svg',
                        color: Colors.black,
                      ),
                    )
                  : Container(),
            ],
          ),
          24.vs,
          if (isSearch)
            AppInput(
              hintText: 'البحث عن منتج...',
              prefixIcon: 'search.svg',
              suffixIcon: 'filter.svg',
              onTap: () => showModelSheet(context),
            ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
