import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/_features/home/pages/home/presentation/widgets/home_product_grid_view.dart';

import 'package:waheed/core/shared/utils/app_colors.dart';
import 'package:waheed/core/shared/widgets/custom_app_bar.dart';

class AllProductView extends StatelessWidget {
  const AllProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: CustomAppBar(
        isAction: true,
        title: 'كل المنتجات',
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.r),
        child: HomeProductGridView(),
      ),
    );
  }
}
