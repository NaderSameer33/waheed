
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../extensions/navigator_extenstion.dart';
import '../../extensions/sizedbox_extenstion.dart';
import 'app_button.dart';
import 'bottom_sheet_categories.dart';

import 'bottom_sheet_header.dart';
import 'price_domain.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .5,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32.r),
          topRight: Radius.circular(32.r),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          right: 16.r,
          left: 16.r,
          bottom: MediaQuery.of(context).padding.bottom,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            BottomSheetHeader(),
            16.vs,
            BottomSheetCategories(),
            16.vs,
            PriceDomain(),
            10.vs,
            AppButton(
              onPressed: () => context.popName(),
              title: 'عرض النتائج (24)',
            ),
          ],
        ),
      ),
    );
  }
}
