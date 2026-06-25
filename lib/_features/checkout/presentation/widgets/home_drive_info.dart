import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/extensions/sizedbox_extenstion.dart';
import '../../../../core/shared/widgets/app_image.dart';

class HomeDriveInfo extends StatelessWidget {
  const HomeDriveInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 24.h,
      ),
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
      width: double.infinity,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: Colors.white,
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 40.h,
                width: 40.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  color: Colors.black.withValues(alpha: .06),
                ),
                child: AppImage(image: 'home_drive.svg'),
              ),
              8.hs,
              Text(
                'المنزل',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 16.sp,
                ),
              ),
              8.hs,
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(2.r),
                height: 22.h,
                width: 52.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  color: Colors.black.withValues(alpha: .06),
                ),
                child: Text(
                  'افتراضي',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                  ),
                ),
              ),
            ],
          ),
          8.vs,
          Text(
            'أحمد صبري • +15 55 123 4567',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: Color(0xff45556C),
            ),
          ),
          8.vs,
          Text(
            'المنصورة، حي الزعفران',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: Color(0xff45556C),
            ),
          ),
          8.vs,
          Text(
            'شارع صلاح الدين، بيت رقم 77 ',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: Color(0xff45556C),
            ),
          ),
        ],
      ),
    );
  }
}
