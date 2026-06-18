import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({
    super.key,
    required this.title,
    required this.subTitle,
    this.onPressed,
  });

  final String title, subTitle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16.sp,
          ),
        ),
        Spacer(),
        TextButton(
          onPressed: onPressed,
          child: Text(
            subTitle,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 12.sp,
            ),
          ),
        ),
      ],
    );
  }
}
