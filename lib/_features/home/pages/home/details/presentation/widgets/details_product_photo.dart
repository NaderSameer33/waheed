import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/core/extensions/sizedbox_extenstion.dart';
import 'package:waheed/core/shared/widgets/app_image.dart';

class DetailsProductPhoto extends StatelessWidget {
  const DetailsProductPhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          16.vs,
          AppImage(
            borderRadiut: 16.r,
            image: 'suit.png',
            width: 352.w,
            fit: BoxFit.fill,
          ),

          16.vs,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                4,
                (index) => AppImage(
                  borderRadiut: 8.r,
                  leftSacing: 8,
                  image: 'suit.png',
                  height: 82.h,
                ),
              ),
            ],
          ),
          24.vs,
        ],
      ),
    );
  }
}
