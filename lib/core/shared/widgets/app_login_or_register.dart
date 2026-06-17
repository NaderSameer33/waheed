import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../extensions/navigator_extenstion.dart';
import '../../router/app_route_name.dart';

class ApploginOrReginster extends StatelessWidget {
  const ApploginOrReginster({
    super.key,
    this.isLogin = false,
  });
  final bool isLogin;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
        children: [
          TextSpan(
            text: isLogin ? 'ليس لديك حساب ؟' : 'لديك جساب ب الفعل',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: Colors.black,
            ),
          ),
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: TextButton(
              onPressed: () {
                isLogin
                    ? context.pushName(page: AppRouteName.register)
                    : context.popName();
              },
              child: Text(
                isLogin ? 'انشاء حساب جديد' : 'تسجيل الدخول ',
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
