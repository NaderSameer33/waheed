import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/core/extensions/sizedbox_extenstion.dart';
import 'package:waheed/core/shared/widgets/app_image.dart';

class HomeDriveCash extends StatefulWidget {
  const HomeDriveCash({super.key});

  @override
  State<HomeDriveCash> createState() => _HomeDriveCashState();
}

class _HomeDriveCashState extends State<HomeDriveCash> {
  int currentIndex = 0;
  final _list = [
    CasheModel(
      title: 'الدفع عند الاستلام',
      subTitle: 'ادفع نقداً عند وصول الطلب',
      image: 'cash.svg',
    ),
    CasheModel(
      title: 'بطاقة ائتمانية / ميزة/ أبل باي',
      subTitle: 'فيزا، ماستركارد، ميزة',
      image: 'apple_pay.svg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            AppImage(image: 'apple_pay.svg'),
            8.hs,
            Text(
              'طريقة الدفع',
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
                    height: 40.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                      color: currentIndex == index
                          ? Color(0xff292D32)
                          : Color(0xffF1F5F9),
                      borderRadius: BorderRadius.circular(14.r),
                    ),

                    child: AppImage(
                      image: _list[index].image,
                      color: currentIndex == index ? Colors.white : null,
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
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CasheModel {
  final String title, subTitle, image;
  const CasheModel({
    required this.title,
    required this.subTitle,
    required this.image,
  });
}
