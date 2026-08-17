import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/_features/all_products/data/models/all_produts_model.dart'
    hide Colors;

import '../../../../../../core/shared/widgets/app_image.dart';
import 'product_info.dart';

class HomeProductItem extends StatelessWidget {
  const HomeProductItem({
    super.key,
    this.isDetails = false,
    required this.product,
  });
  final bool isDetails;
  final Proudtcs product;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            children: [
              AppImage(
                width: double.infinity,
                topSpacing: 8,
                borderRadiut: 16,

                image: product.mainImageUrl,
                height: 176.h,
                fit: BoxFit.fill,
              ),

              if (isDetails)
                Positioned(
                  top: 10.h,
                  right: 4,
                  left: 4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 28.h,
                        width: 38.w,
                        decoration: BoxDecoration(
                          color: Color(0xff314158),
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Text(
                          'جديد',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 10.sp,
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 8.r),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite_outline),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),

          ProductInfo(
            products: product,
            isDetils: isDetails,
          ),
        ],
      ),
    );
  }
}
