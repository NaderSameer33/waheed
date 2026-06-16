import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/_features/home/pages/home/presentation/widgets/product_info.dart';
import 'package:waheed/core/extensions/sizedbox_extenstion.dart';
import 'package:waheed/core/shared/widgets/app_image.dart';

class HomeProductItem extends StatelessWidget {
  const HomeProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppImage(
          image: 'suit.png',
          height: 176.h,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        10.vs,
        ProductInfo(),
      ],
    );
  }
}
