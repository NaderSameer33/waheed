
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/_features/cart/presentation/views/cart_view.dart';
import 'package:waheed/_features/cart/presentation/widgets/summary_info.dart';
import 'package:waheed/core/extensions/sizedbox_extenstion.dart';
import 'package:waheed/core/shared/widgets/app_image.dart';

class CartSummaryOrder extends StatefulWidget {
  const CartSummaryOrder({
    super.key,
  });

  @override
  State<CartSummaryOrder> createState() => _CartSummaryOrderState();
}

class _CartSummaryOrderState extends State<CartSummaryOrder> {
  bool isExpanded = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.r),
      padding: EdgeInsets.all(20.r),

      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Column(
        children: [
          Row(
            children: [
              AppImage(image: 'summary.svg'),
              4.hs,
              Text(
                'ملخص الطلب',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 15.sp,
                ),
              ),
              Spacer(),
              IconButton(
                onPressed: () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
                icon: AnimatedRotation(
                  turns: isExpanded ? .5 : 0,
                  duration: Duration(milliseconds: 500),
                  child: Icon(
                    Icons.keyboard_arrow_down,
                  ),
                ),
              ),
            ],
          ),

          AnimatedSize(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            child: isExpanded
                ? Column(
                    children: [
                      16.vs,
                      SummaryInfo(
                        title: 'المجموع الفرعي',
                        subTitle: '٦٬٦٠٠ ج.م',
                        bottoomSpacing: 10.h,
                      ),

                      SummaryInfo(
                        title: 'التوصيل',
                        subTitle: '٦٬٦٠٠ ج.م',
                        bottoomSpacing: 10.h,
                      ),

                      SummaryInfo(
                        title: 'الخصم',
                        subTitle: '٦٬٦٠٠ ج.م',
                        bottoomSpacing: 10.h,
                      ),
                      Divider(),
                      SummaryInfo(
                        title: 'الإجمالي',
                        subTitle: '٦٬٦٠٠ ج.م',
                        bottoomSpacing: 10.h,
                        isTotal: true,
                      ),
                    ],
                  )
                : SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}