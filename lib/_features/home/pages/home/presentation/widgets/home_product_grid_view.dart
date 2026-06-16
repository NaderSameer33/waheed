import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/_features/home/pages/home/presentation/widgets/home_product_item.dart';
import 'package:waheed/core/extensions/navigator_extenstion.dart';
import 'package:waheed/core/router/app_route_name.dart';

class HomeProductGridView extends StatelessWidget {
  const HomeProductGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 10,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 177.w / 292.h,
        mainAxisSpacing: 16.r,
        crossAxisSpacing: 16.r,
      ),
      itemBuilder: (context, index) => GestureDetector(
        onTap: () => context.pushName(page: AppRouteName.details),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            color: Colors.white,
          ),
          child: HomeProductItem(),
        ),
      ),
    );
  }
}
