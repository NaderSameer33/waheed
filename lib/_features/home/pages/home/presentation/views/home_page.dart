import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/_features/home/presentation/widgets/home_app_Bar.dart';
import 'package:waheed/core/extensions/navigator_extenstion.dart';
import 'package:waheed/core/router/app_route_name.dart';
import 'package:waheed/core/shared/utils/app_colors.dart';
import '../widgets/home_category_grid_view.dart';
import '../widgets/home_product_grid_view.dart';
import '../widgets/home_slider.dart';
import '../widgets/home_title.dart';
import '../../../../../../core/extensions/sizedbox_extenstion.dart';
import '../../../../../../core/func/helper_function.dart';
import '../../../../../../core/shared/widgets/app_input.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: HomeAppBar(),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 16.r),
        child: Column(
          children: [
            25.vs,
            AppInput(
              hintText: 'البحث عن منتج...',
              prefixIcon: 'search.svg',
              suffixIcon: 'filter.svg',
              onTap: () => showModelSheet(context),
            ),
            25.vs,
            HomeSlider(),

            HomeTitle(
              title: 'تسوق حسب التصنيف',
              subTitle: 'عرض الكل',
              onPressed: () => context.pushName(page: AppRouteName.categoriy),
            ),
            15.vs,
            HomeCategoryGridView(),
            19.vs,
            HomeTitle(
              title: 'أحدث المنتجات',
              subTitle: 'عرض المزيد',
              onPressed: () => context.pushName(page: AppRouteName.allProduct),
            ),
            16.vs,
            HomeProductGridView(),
          ],
        ),
      ),
    );
  }
}
