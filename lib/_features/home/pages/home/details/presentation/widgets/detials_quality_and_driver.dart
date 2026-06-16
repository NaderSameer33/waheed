import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/core/shared/utils/app_colors.dart';
import 'package:waheed/core/shared/widgets/app_image.dart';

class DetailsQulityAndDriver extends StatefulWidget {
  const DetailsQulityAndDriver({
    super.key,
  });

  @override
  State<DetailsQulityAndDriver> createState() => _DetailsQulityAndDriverState();
}

class _DetailsQulityAndDriverState extends State<DetailsQulityAndDriver> {
  int currentIndex = 0;
  final _list = [
    _DetailsModel(image: 'quality.svg', title: 'جودة عالية'),
    _DetailsModel(image: 'drive.svg', title: 'توصيل 3–7 أيام'),
    _DetailsModel(image: 'daman.svg', title: 'ضمان التفصيل'),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
          3,
          (index) => Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = index;
                });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 500),
                margin: EdgeInsets.only(left: 16.r),
                alignment: Alignment.center,
                height: 78.h,

                width: 118.w,
                decoration: BoxDecoration(
                  border: BoxBorder.all(
                    width: 1,
                    color: currentIndex == index
                        ? Colors.white
                        : AppColors.borderColor,
                  ),
                  color: Color(0xffF8FAFC),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppImage(image: _list[index].image),
                    Text(
                      _list[index].title,
                      style: TextStyle(
                        color: AppColors.infoColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 11.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _DetailsModel {
  final String title, image;

  _DetailsModel({required this.image, required this.title});
}
