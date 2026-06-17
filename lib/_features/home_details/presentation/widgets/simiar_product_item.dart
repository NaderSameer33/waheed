import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/extensions/sizedbox_extenstion.dart';
import '../../../../core/shared/widgets/app_image.dart';

class SimiarProductItem extends StatelessWidget {
  const SimiarProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: Colors.white,
      ),
      child: Column(
        children: [
          AppImage(
            image: 'suit.png',
            height: 176.h,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          10.vs,
        ],
      ),
    );
  }
}
