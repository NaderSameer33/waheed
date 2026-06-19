import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SummaryInfo extends StatelessWidget {
  const SummaryInfo({
    super.key,
    required this.title,
    required this.subTitle,
    this.bottoomSpacing,
    this.isTotal = false,
  });
  final String title, subTitle;
  final double? bottoomSpacing;
  final bool isTotal;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: bottoomSpacing ?? 0),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15.sp,
              color: Colors.black,
            ),
          ),
          Spacer(),
          Text(
            subTitle,
            style: isTotal
                ? TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 18.sp,
                  )
                : TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 15.sp,
                  ),
          ),
        ],
      ),
    );
  }
}
