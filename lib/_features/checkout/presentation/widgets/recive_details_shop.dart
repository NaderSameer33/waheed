import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/extensions/sizedbox_extenstion.dart';
import '../../../../core/shared/widgets/app_image.dart';

class ReciveDetailsShop extends StatelessWidget {
  const ReciveDetailsShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            AppImage(image: 'marker.svg'),
            8.hs,
            Text(
              'طريقة الدفع',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Color(0xff314158),
                fontSize: 16.sp,
              ),
            ),
          ],
        ),
        8.vs,
        Container(
          margin: EdgeInsets.only(bottom: 8.h),
          padding: EdgeInsets.all(16.r),
          height: 77.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.r),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 1),
                blurRadius: 3,
                spreadRadius: 0,
                color: Colors.black.withValues(alpha: 0.1),
              ),
              BoxShadow(
                offset: Offset(0, 1),
                blurRadius: 2,
                spreadRadius: 0,
                color: Colors.black.withValues(alpha: 0.1),
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                height: 40.h,
                width: 40.w,
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: .1),
                  borderRadius: BorderRadius.circular(14.r),
                ),

                child: AppImage(image: 'home_drive.svg'),
              ),

              16.hs,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'الفرع الرئيسي – ميت غمر',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    'ميت غمر، شارع المعاهده بجوار كلية التربية النوعية',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff62748E),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
