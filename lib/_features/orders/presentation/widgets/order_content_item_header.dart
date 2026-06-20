import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/core/extensions/sizedbox_extenstion.dart';
import 'package:waheed/core/shared/widgets/app_image.dart';

class OrderContentItemheader extends StatelessWidget {
  const OrderContentItemheader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'طلب رقم',
          style: TextStyle(
            color: Color(0xff90A1B9),
            fontWeight: FontWeight.w500,
            fontSize: 12.sp,
          ),
        ),
        8.hs,
        Text(
          'EQ-482910',
          style: TextStyle(
            color: Color(0xff314158),
            fontWeight: FontWeight.bold,
            fontSize: 14.sp,
          ),
        ),
        Spacer(),
        Container(
          padding: EdgeInsets.all(6.r),
          height: 30.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.r),
            color: Color(0xff1E3A8A).withValues(alpha: .1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppImage(
                height: 14.sp,
                width: 14.sp,
                image: 'drive.svg',
                color: Color(0xff1E3A8A),
              ),
              4.hs,
              Text(
                'قيد التوصيل',
                style: TextStyle(
                  color: Color(0xff1E3A8A),
                  fontWeight: FontWeight.w500,
                  fontSize: 11.sp,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
