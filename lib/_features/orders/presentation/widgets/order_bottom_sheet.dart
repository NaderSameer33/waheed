import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'order_info_wrap_view.dart';
import '../../../../core/extensions/navigator_extenstion.dart';
import '../../../../core/extensions/sizedbox_extenstion.dart';
import '../../../../core/shared/widgets/app_button.dart';
import '../../../../core/shared/widgets/bottom_sheet_header.dart';

class OrderBottomSheet extends StatelessWidget {
  const OrderBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .4,
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
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            BottomSheetHeader(
              isOrder: true,
              title: 'تصفية حسب التاريخ',
            ),
            16.vs,

            OrderInfoWrapView(),
            20.vs,
            AppButton(
              onPressed: () => context.popName(),
              title: 'تطبيق التصفية',
            ),
          ],
        ),
      ),
    );
  }
}
