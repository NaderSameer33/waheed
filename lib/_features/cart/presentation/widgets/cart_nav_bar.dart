import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/extensions/sizedbox_extenstion.dart';
import '../../../../core/shared/widgets/app_button.dart';

class CartNavBar extends StatelessWidget {
  const CartNavBar({
    super.key,
    required this.title,
    required this.onPressed,
    this.icon,
  });
  final String title;
  final VoidCallback onPressed;
  final String? icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.r),
      height: 80.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                'إجمالي السعر',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                ),
              ),
              Flexible(
                child: Text(
                  '١٨٠٠ جنيه',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                  ),
                ),
              ),
            ],
          ),
          10.hs,
          Expanded(
            child: AppButton(
              onPressed: onPressed,
              title: title,
              icon: icon,
            ),
          ),
        ],
      ),
    );
  }
}
