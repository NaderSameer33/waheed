import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/_features/cart/presentation/widgets/cart_add_remove_button.dart';
import 'package:waheed/core/extensions/sizedbox_extenstion.dart';
import 'package:waheed/core/shared/utils/app_colors.dart';
import 'package:waheed/core/shared/widgets/app_image.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.r),
      height: 140.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          AppImage(
            borderRadiut: 12.r,

            image: 'suit.png',
            height: 120.h,
            width: 104.w,
            fit: BoxFit.fill,
          ),
          8.hs,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'بدلة كلاسيكية سوداء',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                  ),
                ),
                2.vs,
                Text(
                  'صوف إيطالي فاخر',
                  style: TextStyle(
                    color: AppColors.infoColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                  ),
                ),
                4.vs,
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
                      fontSize: 12.sp,
                    ),
                  ),
                ),
                8.vs,

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '2,450',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.sp,
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

                    CartAddRemoveButton(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
