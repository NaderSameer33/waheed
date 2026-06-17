import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/_features/home/pages/home/presentation/widgets/product_info.dart';
import 'package:waheed/core/extensions/sizedbox_extenstion.dart';
import 'package:waheed/core/shared/widgets/app_image.dart';

class HomeProductItem extends StatelessWidget {
  const HomeProductItem({
    super.key,  this.isDetails = false,
  });
 final bool isDetails ;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppImage(
            image: 'suit.png',
            height: 176.h,
            fit: BoxFit.fill,
          ),
          10.vs,
          ProductInfo(
            isDetils: isDetails,
          ),
        ],
      ),
    );
  }
}
