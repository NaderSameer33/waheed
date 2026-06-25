import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/recive_method_item.dart';
import '../../../../core/extensions/sizedbox_extenstion.dart';
import '../../../../core/shared/widgets/app_image.dart';

class CompleteOrderView extends StatelessWidget {
  const CompleteOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            AppImage(image: 'drive.svg'),
            8.hs,
            Text(
              'طريقة الاستلام',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Color(0xff314158),
                fontSize: 16.sp,
              ),
            ),
          ],
        ),
        16.vs,
        ReciveMethodItem(),
      ],
    );
  }
}
