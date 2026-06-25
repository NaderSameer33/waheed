import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'order_content_item_header.dart';
import 'order_content_item_info.dart';
import '../../../../core/extensions/sizedbox_extenstion.dart';
import '../../../../core/shared/widgets/app_button.dart';

class OrderContentItem extends StatelessWidget {
  const OrderContentItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.r),
      margin: EdgeInsets.only(bottom: 16.r),
      height: 190.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 2),
            blurRadius: 2,
            spreadRadius: 2,
            color: Colors.black.withValues(alpha: .08),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OrderContentItemheader(),
          16.vs,
          OrderContentItemInfo(),
          10.vs,
          Flexible(
            child: Row(
              children: [
                Expanded(
                  child: AppButton(
                    onPressed: () {},
                    title: 'عرض التفاصيل',
                    color: Colors.black.withValues(alpha: .01),
                    titleColor: Colors.black,
                  ),
                ),
                8.hs,
                Expanded(
                  child: AppButton(
                    onPressed: () {},
                    title: 'تتبع الطلب',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
