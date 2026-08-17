import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/_features/all_products/data/models/all_produts_model.dart';
import '../../../../core/extensions/sizedbox_extenstion.dart';
import '../../../../core/shared/widgets/app_image.dart';

class DetailsProductPhoto extends StatelessWidget {
  const DetailsProductPhoto({
    super.key,
    required this.proudtcs,
  });
  final Proudtcs proudtcs;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          16.vs,
          AspectRatio(
            aspectRatio: 1,
            child: AppImage(
              leftSacing: 16.r,
              rightSpacing: 16.r,
              borderRadiut: 16.r,
              image: proudtcs.mainImageUrl,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          16.vs,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                proudtcs.images.length,
                (index) => AppImage(
                  borderRadiut: 8.r,
                  leftSacing: 8,
                  image: proudtcs.images[index].imageUrl,
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
