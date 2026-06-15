import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPassIndecatore extends StatelessWidget {
  const ForgetPassIndecatore({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Expanded(
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            margin: EdgeInsets.only(left: 8.r),
            height: 6.h,
            decoration: BoxDecoration(
              color: index <= currentIndex ? Colors.black : Colors.grey,
              borderRadius: BorderRadius.circular(12.r),
            ),
          ),
        ),
      ),
    );
  }
}
