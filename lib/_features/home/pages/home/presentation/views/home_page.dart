import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/_features/home/pages/home/presentation/widgets/home_category_grid_view.dart';
import 'package:waheed/_features/home/pages/home/presentation/widgets/home_indecator.dart';
import 'package:waheed/_features/home/pages/home/presentation/widgets/home_product_grid_view.dart';
import 'package:waheed/_features/home/pages/home/presentation/widgets/home_slider.dart';
import 'package:waheed/_features/home/pages/home/presentation/widgets/home_title.dart';
import 'package:waheed/core/extensions/sizedbox_extenstion.dart';
import 'package:waheed/core/func/helper_function.dart';
import 'package:waheed/core/shared/widgets/app_image.dart';
import 'package:waheed/core/shared/widgets/app_input.dart';
import 'package:waheed/core/shared/widgets/custom_bottom_sheet.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
          ),
          15.vs,
          HomeCategoryGridView(),
          19.vs,
          HomeTitle(
            title: 'أحدث المنتجات',
            subTitle: 'عرض المزيد',
          ),
          16.vs,
          HomeProductGridView(),
        ],
      ),
    );
  }
}
