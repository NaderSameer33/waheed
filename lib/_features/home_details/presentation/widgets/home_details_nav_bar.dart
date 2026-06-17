
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/core/extensions/sizedbox_extenstion.dart';
import 'package:waheed/core/shared/utils/app_colors.dart';
import 'package:waheed/core/shared/widgets/app_button.dart';

class HomeDetaislNavBar extends StatelessWidget {
  const HomeDetaislNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.r),
      height: 200.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.r),
          topRight: Radius.circular(24.r),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          19.vs,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 42.h,
                width: 106.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(99.r),
                  color: AppColors.scaffoldColor,
                ),
                child: Padding(
                  padding: EdgeInsets.all(4.r),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            size: 15,
                            Icons.remove,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Text(
                        '1',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 11.sp,
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            size: 15,
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'إجمالي السعر',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                    ),
                  ),
                  10.vs,
                  Row(
                    children: [
                      Text(
                        '2,200 ج',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                        ),
                      ),
                      10.hs,
                      Text(
                        '1,800 ج',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22.sp,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          16.vs,
          AppButton(
            onPressed: () {},
            title: 'المتابعة لتحديد القياسات',
            icon: 'size.svg',
          ),
        ],
      ),
    );
  }
}
