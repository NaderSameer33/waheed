
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/core/extensions/sizedbox_extenstion.dart';
import 'package:waheed/core/shared/utils/app_colors.dart';

class BottomSheetCategories extends StatefulWidget {
  const BottomSheetCategories({
    super.key,
  });

  @override
  State<BottomSheetCategories> createState() => _BottomSheetCategoriesState();
}

class _BottomSheetCategoriesState extends State<BottomSheetCategories> {
  final _list = ['الكل', 'الأحذية', 'الاكسسوارات', 'الاكسسوارات', 'القمصان'];
  int currentIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'الأقسام',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 16.sp,
          ),
        ),
        10.vs,
        Wrap(
          spacing: 30.w,
          runSpacing: 12.h,
          children: [
            ...List.generate(
              5,
              (index) => GestureDetector(
                onTap: () {
                  currentIndex = index;
                  setState(() {});
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  padding: EdgeInsets.all(10.r),
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: currentIndex == index
                        ? Colors.black
                        : AppColors.scaffoldColor,
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Text(
                    _list[index],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.sp,
                      color: currentIndex == index
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
