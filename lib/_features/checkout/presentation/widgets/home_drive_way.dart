import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/core/extensions/sizedbox_extenstion.dart';
import 'package:waheed/core/shared/widgets/app_image.dart';

class HomeDriveWay extends StatefulWidget {
  const HomeDriveWay({super.key});

  @override
  State<HomeDriveWay> createState() => _HomeDriveWayState();
}

class _HomeDriveWayState extends State<HomeDriveWay> {
  final _list = [
    HomdeDriveWayModel(
      price: 120,
      subTitle: '٣–٥ أيام عمل',
      title: 'التوصيل العادي',
    ),
    HomdeDriveWayModel(
      price: 200,
      subTitle: 'خلال ٢٤ ساعة',
      title: 'التوصيل السريع',
    ),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            AppImage(image: 'drive.svg'),
            8.hs,
            Text(
              'طريقة الاستلام',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Color(0xff314158),
                fontSize: 16.sp,
              ),
            ),
          ],
        ),
        8.vs,
        ...List.generate(
          _list.length,
          (index) => GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = index;
              });
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              margin: EdgeInsets.only(bottom: 8.h),
              padding: EdgeInsets.all(16.r),
              height: 77.h,
              decoration: BoxDecoration(
                border: BoxBorder.all(
                  color: currentIndex == index
                      ? Colors.black
                      : Colors.transparent,
                  width: currentIndex == index ? 1.5 : 0,
                ),
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.r),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 1),
                    blurRadius: 3,
                    spreadRadius: 0,
                    color: Colors.black.withValues(alpha: 0.1),
                  ),
                  BoxShadow(
                    offset: Offset(0, 1),
                    blurRadius: 2,
                    spreadRadius: 0,
                    color: Colors.black.withValues(alpha: 0.1),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    height: 20.h,
                    width: 20.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: BoxBorder.all(
                        color: currentIndex == index
                            ? Colors.black
                            : Color(0xffCBD5E1),
                        width: currentIndex == index ? 4.6 : 1,
                      ),
                    ),
                  ),
                  16.hs,

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _list[index].title,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        _list[index].subTitle,
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff62748E),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    '${_list[index].price}ج.م',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class HomdeDriveWayModel {
  final String title, subTitle;
  final int price;
  const HomdeDriveWayModel({
    required this.price,
    required this.subTitle,
    required this.title,
  });
}
