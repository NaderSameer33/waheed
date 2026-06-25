import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../categories/presentation/widgets/category_item.dart';

class HomeCategoryGridView extends StatelessWidget {
  const HomeCategoryGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 4,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 151.w / 56.h,
        mainAxisSpacing: 8.r,
        crossAxisSpacing: 8.r,
      ),
      itemBuilder: (context, index) => CategoryItem(width: 40.w),
    );
  }
}
