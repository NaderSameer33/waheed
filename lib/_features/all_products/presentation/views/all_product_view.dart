import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../home/pages/home/presentation/widgets/home_product_grid_view.dart';

import '../../../../core/shared/utils/app_colors.dart';
import '../../../../core/shared/widgets/custom_app_bar.dart';

class AllProductView extends StatelessWidget {
  const AllProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: CustomAppBar(
        height: 150.h,
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
