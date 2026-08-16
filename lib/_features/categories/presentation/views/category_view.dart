import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/shared/utils/app_colors.dart';
import '../../../../core/shared/widgets/custom_app_bar.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: CustomAppBar(
        height: 150.h,
        title: 'كل التصنيفات',
      ),
      body: Center(child: Text('cateygory'),)
    );
  }
}
