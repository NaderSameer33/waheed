import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/core/extensions/sizedbox_extenstion.dart';
import 'package:waheed/core/shared/utils/app_colors.dart';
import 'package:waheed/core/shared/widgets/app_image.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              AppImage(
                image: 'star.svg',
                height: 20.h,
                width: 20.w,
              ),
              Text(
                '4.9',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                ),
              ),
              4.hs,
              Text(
                '(128)',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                ),
              ),
            ],
          ),
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
