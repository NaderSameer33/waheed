import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/core/extensions/sizedbox_extenstion.dart';
import 'package:waheed/core/func/helper_function.dart';
import 'package:waheed/core/shared/widgets/app_image.dart';

class OrderHeaderItem extends StatelessWidget {
  const OrderHeaderItem({
    super.key,
    required this.title,
    required this.currentIndex,
    required this.isActive,
  });
  final String title;
  final int currentIndex;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    final isFirst = currentIndex == 0;

    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      margin: EdgeInsets.only(
        left: 8.w,
      ),
      alignment: Alignment.center,
      padding: EdgeInsets.all(8),
    
      decoration: BoxDecoration(
        color: isActive ? Colors.black : Colors.white,
        borderRadius: BorderRadius.circular(24.r),
        border: BoxBorder.all(
          width: 1,
          color: Colors.black.withValues(alpha: .2),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (isFirst)
            AppImage(
              image: 'table.svg',
              color: isActive ? Colors.white : null,
            ),
          4.hs,
    
          Text(
            title,
            style: TextStyle(
              color: isActive ? Colors.white : Color(0xff334155),
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
            ),
          ),
          4.hs,
          if (isFirst)
            AppImage(
              image: 'arrow_down.svg',
              color: isActive ? Colors.white : null,
            ),
        ],
      ),
    );
  }
}
