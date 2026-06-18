import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/core/shared/utils/app_colors.dart';
import 'package:waheed/core/shared/widgets/app_image.dart';

class CartAddRemoveButton extends StatelessWidget {
  const CartAddRemoveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36.h,
      width: 93.w,
      decoration: BoxDecoration(
        color: AppColors.scaffoldColor,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 28.h,
            width: 28.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6.r),
            ),
            child: Icon(
              Icons.add,
              size: 25.h,
            ),
          ),
          Text('1'),
          Container(
            height: 28.h,
            width: 28.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6.r),
            ),
            child: AppImage(
              image: 'trash.svg',
            ),
          ),
        ],
      ),
    );
  }
}
