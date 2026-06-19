
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/core/extensions/sizedbox_extenstion.dart';
import 'package:waheed/core/shared/widgets/app_image.dart';
import 'package:waheed/core/shared/widgets/app_input.dart';

class CartCuponItem extends StatelessWidget {
  const CartCuponItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4.r),
      margin: EdgeInsets.only(bottom: 30.h, right: 16.w, left: 16.w),
      height: 52.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Color(0xffF7F7F7),
            child: AppImage(
              image: 'cupon.svg',
            ),
          ),
          8.hs,
          Expanded(
            child: AppInput(
              hintText: 'أدخل كود الخصم',
              isCupon: true,
              isFilled: false,
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 32.h,
            width: 70.w,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Text(
              'تطبيق',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 12.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
