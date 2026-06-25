import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/core/extensions/navigator_extenstion.dart';
import 'package:waheed/core/extensions/sizedbox_extenstion.dart';
import 'package:waheed/core/router/app_route_name.dart';
import 'package:waheed/core/shared/widgets/app_button.dart';
import 'package:waheed/core/shared/widgets/app_image.dart';

class DoneOrderView extends StatelessWidget {
  const DoneOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: AppImage(image: 'curve.png'),
          ),
          Padding(
            padding: EdgeInsets.all(20.r),
            child: Column(
              children: [
                AppImage(image: 'done.png'),
                Text(
                  'تم تأكيد طلبك بنجاح',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24.sp,
                  ),
                ),
                16.vs,
                Text(
                  'شكراً لاختيارك متجرنا. سنرسل لك إشعاراً عند شحن طلبك',
                  style: TextStyle(
                    color: Color(0xdd62748E),
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                  ),
                ),
                16.vs,
                Container(
                  height: 120.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    color: Color(0xffF8FAFC),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'رقم الطلب',
                        style: TextStyle(
                          color: Color(0xff62748E),
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                        ),
                      ),
                      16.vs,
                      Text(
                        'EQ-815069',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp,
                        ),
                      ),
                      Divider(
                        endIndent: 50,
                        indent: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppImage(image: 'drive.svg'),
                          8.hs,
                          Text(
                            'التوصيل المتوقع: ٣–٥ أيام عمل',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                50.vs,
                SizedBox(
                  width: double.infinity,
                  child: AppButton(
                    onPressed: () {},
                    title: 'تتبع الطلب',
                    icon: 'drive.svg',
                    iconColor: Colors.white,
                  ),
                ),

                16.vs,
                GestureDetector(
                  onTap: () => context.pushName(page: AppRouteName.home),
                  child: Container(
                    alignment: Alignment.center,
                    height: 56.h,
                    width: double.infinity,

                    decoration: BoxDecoration(
                      border: BoxBorder.all(
                        color: Color(0xff1E3A8A).withValues(alpha: .19),
                      ),
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Text(
                      'العودة للرئيسية',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
