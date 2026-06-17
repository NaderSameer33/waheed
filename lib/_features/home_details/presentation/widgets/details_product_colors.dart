import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/core/extensions/sizedbox_extenstion.dart';
import 'package:waheed/core/shared/widgets/app_image.dart';

class DetailsProductColor extends StatefulWidget {
  const DetailsProductColor({
    super.key,
  });

  @override
  State<DetailsProductColor> createState() => _DetailsProductColorState();
}

class _DetailsProductColorState extends State<DetailsProductColor> {
  final _list = [
    Color(0xff3F4651),
    Color(0xff172554),
    Color(0xff1A1A1A),
    Color(0xffC9B79C),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'اللون',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.sp,
              ),
            ),

            Spacer(),
            Text(
              'رصاصي داكن',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12.sp,
              ),
            ),
          ],
        ),
        16.vs,
        Row(
          children: [
            ...List.generate(
              4,
              (index) => GestureDetector(
                onTap: () {
                  setState(() {
                    currentIndex = index;
                  });
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  margin: EdgeInsets.only(left: 12.r),
                  height: 40.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _list[index],
                    border: Border.all(
                      width: 1,
                      color: currentIndex == index
                          ? Colors.white
                          : Colors.transparent,
                    ),
                  ),
                  child: currentIndex == index
                      ? AppImage(image: 'true.svg')
                      : null,
                ),
              ),
            ),
          ],
        ),
        18.vs,
        Divider(),
        24.vs,
      ],
    );
  }
}
