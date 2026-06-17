import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/extensions/sizedbox_extenstion.dart';
import '../../../../../../core/shared/widgets/app_image.dart';

class RateProduct extends StatelessWidget {
  const RateProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
