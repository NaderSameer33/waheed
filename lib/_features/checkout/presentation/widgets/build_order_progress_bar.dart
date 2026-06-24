import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildOrderBrogressBar extends StatelessWidget {
  const BuildOrderBrogressBar({
    super.key,
    required this.currentIndex,
  });

  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
          3,
          (index) => Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 8.w),
              height: 6,
              decoration: BoxDecoration(
                color: index <= currentIndex ? Colors.black : Color(0xffE5E7EB),
                borderRadius: BorderRadius.circular(99.r),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
