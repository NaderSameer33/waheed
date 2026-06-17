import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'rate_product.dart';
import '../../../../../../core/extensions/sizedbox_extenstion.dart';
import '../../../../../../core/shared/utils/app_colors.dart';
import '../../../../../../core/shared/widgets/app_image.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({super.key, this.isDetils = false});
  final bool isDetils;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          8.vs,
          Text(
            'بدلة كلاسيكية سوداء',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 14.sp,
            ),
          ),
          2.vs,
          Text(
            'صوف إيطالي فاخر',
            style: TextStyle(
              color: AppColors.infoColor,
              fontWeight: FontWeight.w400,
              fontSize: 10.sp,
            ),
          ),
          RateProduct(),
          10.vs,
          Row(
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '2,450',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                      ),
                    ),
                    TextSpan(
                      text: 'ج.م',
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.infoColor,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              if (isDetils)
                Container(
                  padding: EdgeInsets.all(4.r),
                  height: 32.h,
                  width: 32.w,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: AppImage(
                    image: 'cart.svg',
                    color: Colors.white,
                  ),
                )
              else
                Container(
                  alignment: Alignment.center,
                  height: 23.h,
                  width: 42.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(99.r),
                    border: BoxBorder.all(
                      width: 1,
                      color: AppColors.borderColor,
                    ),
                  ),
                  child: Text(
                    'إيجار',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 10.sp,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
