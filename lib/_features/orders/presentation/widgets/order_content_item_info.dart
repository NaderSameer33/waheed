import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/extensions/sizedbox_extenstion.dart';
import '../../../../core/shared/widgets/app_image.dart';

class OrderContentItemInfo extends StatelessWidget {
  const OrderContentItemInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppImage(
          image: 'suit.png',
          height: 56.h,
          width: 56.w,
          borderRadiut: 6.r,
        ),
        11.hs,
        Column(
          children: [
            Text(
              'بدلة سوداء + ملحقات',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14.sp,
              ),
            ),
            3.vs,
            Text(
              '3 منتجات • ٨ مايو ٢٠٢٦',
              style: TextStyle(
                color: Color(0xff62748E),
                fontWeight: FontWeight.w400,
                fontSize: 12.sp,
              ),
            ),
            3.vs,
            Text(
              '3,475 ج.م',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 14.sp,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
