import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/_features/categories/presentation/widgets/category_item.dart';
import 'package:waheed/core/shared/utils/app_colors.dart';
import 'package:waheed/core/shared/widgets/custom_app_bar.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: CustomAppBar(
        title: 'كل التصنيفات',
      ),
      body: ListView.builder(
        padding: EdgeInsets.only(top: 16.h),
        itemCount: 4,
        itemBuilder: (context, index) => CategoryItem(
          width: double.infinity,
        ),
      ),
    );
  }
}
