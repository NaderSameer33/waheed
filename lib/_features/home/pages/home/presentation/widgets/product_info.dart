import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/_features/all_products/data/models/all_produts_model.dart'
    hide Colors;
import 'rate_product.dart';
import '../../../../../../core/extensions/sizedbox_extenstion.dart';
import '../../../../../../core/shared/utils/app_colors.dart';
import '../../../../../../core/shared/widgets/app_image.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({super.key, this.isDetils = false, required this.products});
  final bool isDetils;
  final Proudtcs products;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          8.vs,
          Text(
            products.nameAr,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 14.sp,
            ),
          ),

          RateProduct(),

          Row(
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: products.price.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                      ),
                    ),
                    TextSpan(
                      text: 'ج.م',
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.infoColor,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              if (isDetils)
                Container(
                  padding: EdgeInsets.all(4.r),
                  height: 32.h,
                  width: 32.w,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: AppImage(
                    image: 'cart.svg',
                    color: Colors.white,
                  ),
                )
              else
                Container(
                  alignment: Alignment.center,
                  height: 23.h,
                  width: 42.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(99.r),
                    border: BoxBorder.all(
                      width: 1,
                      color: AppColors.borderColor,
                    ),
                  ),
                  child: Text(
                    'إيجار',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 10.sp,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
