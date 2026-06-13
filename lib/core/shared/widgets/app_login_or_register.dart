import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ApploginOrReginster extends StatelessWidget {
  const ApploginOrReginster({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
        children: [
          TextSpan(
            text: 'ليس لديك حساب ؟',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: Colors.black,
            ),
          ),
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: TextButton(
              onPressed: () {},
              child: Text(
                'انشاء حساب جديد',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
