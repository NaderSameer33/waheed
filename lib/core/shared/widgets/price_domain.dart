

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/core/extensions/sizedbox_extenstion.dart';
import 'package:waheed/core/shared/utils/app_colors.dart';
import 'package:waheed/core/shared/widgets/range_slider_item.dart';

class PriceDomain extends StatefulWidget {
  const PriceDomain({super.key});

  @override
  State<PriceDomain> createState() => _PriceDomainState();
}

class _PriceDomainState extends State<PriceDomain> {
  RangeValues values = RangeValues(0, 1800);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'نطاق السعر',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18.sp,
          ),
        ),
        RangeSliderItem(
          onChanged: (value) {
            values = value;
            setState(() {});
          },
        ),
        Row(
          children: [
            Container(
              alignment: Alignment.center,
              height: 60.h,
              width: 110.w,
              decoration: BoxDecoration(
                color: AppColors.scaffoldColor,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'الأدنى',
                  ),
                  Text(
                    'ج.م ${values.start.toStringAsFixed(0)}',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.sp,
                    ),
                  ),
                ],
              ),
            ),
            25.hs,
            Expanded(child: Divider()),
            25.hs,
            Container(
              alignment: Alignment.center,
              height: 60.h,
              width: 110.w,
              decoration: BoxDecoration(
                color: AppColors.scaffoldColor,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'الأعلى',
                  ),
                  Text(
                    'ج.م ${values.end.toStringAsFixed(0)}',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.sp,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}