import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/_features/home/pages/home/presentation/widgets/product_info.dart';
import 'package:waheed/core/extensions/sizedbox_extenstion.dart';
import 'package:waheed/core/shared/widgets/app_image.dart';

class HomeProductItem extends StatelessWidget {
  const HomeProductItem({
    super.key,
    this.isDetails = false,
  });
  final bool isDetails;
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
          Stack(
            children: [
              AppImage(
                image: 'suit.png',
                height: 176.h,
                fit: BoxFit.fill,
              ),
              if (isDetails)
                Positioned(
                  top: 4.h,
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
          10.vs,
          ProductInfo(
            isDetils: isDetails,
          ),
        ],
      ),
    );
  }
}
