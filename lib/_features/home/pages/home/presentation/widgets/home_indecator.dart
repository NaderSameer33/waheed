import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeIndecator extends StatelessWidget {
  const HomeIndecator({
    super.key,
    required this.currentIndex,
  });
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
          3,
          (index) => AnimatedContainer(
            duration: Duration(milliseconds: 500),
            margin: EdgeInsets.only(right: 8.r),
            height: 8.h,
            width: 8.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: currentIndex == index ? Colors.black : Color(0xffB5B5B5),
            ),
          ),
        ),
      ],
    );
  }
}
