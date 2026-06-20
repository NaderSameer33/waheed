import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../extensions/navigator_extenstion.dart';
import 'app_image.dart';

class BottomSheetHeader extends StatelessWidget {
  const BottomSheetHeader({
    super.key,
    this.isOrder = false, required this.title,
  });
  final bool isOrder;
  final String title ;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () => context.popName(),
          icon: AppImage(image: 'colse.svg'),
        ),
        Spacer(),
        Text(
         title , 
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18.sp,
          ),
        ),
        Spacer(),
        if (!isOrder)
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.replay,
              size: 16.r,
            ),
          ),
        if (!isOrder)
          Text(
            'إعادة التعيين',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
            ),
          ),
      ],
    );
  }
}
