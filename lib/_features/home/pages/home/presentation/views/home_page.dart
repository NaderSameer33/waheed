import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/_features/all_products/presentation/cubit/all_product_cubit.dart';
import '../../../../presentation/widgets/home_app_Bar.dart';
import '../../../../../../core/extensions/navigator_extenstion.dart';
import '../../../../../../core/router/app_route_name.dart';
import '../../../../../../core/shared/utils/app_colors.dart';
import '../widgets/home_category_grid_view.dart';
import '../widgets/home_product_grid_view.dart';
import '../widgets/home_slider.dart';
import '../widgets/home_title.dart';
import '../../../../../../core/extensions/sizedbox_extenstion.dart';
import '../../../../../../core/func/helper_function.dart';
import '../../../../../../core/shared/widgets/app_input.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = ScrollController();

  @override
  void initState() {
    super.initState();
    context.read<AllProductCubit>().loadFirstPage();
    controller.addListener(_onScroll);
  }

  void _onScroll() {
    final pixel = controller.position.pixels;
    final maxPixel = controller.position.maxScrollExtent;
    const triggerDistatnce = 200;

    if (pixel >= maxPixel - triggerDistatnce) {
      context.read<AllProductCubit>().loadNextPage();
    }
  }

  @override
  void dispose() {
    controller.removeListener(_onScroll);

    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: HomeAppBar(),
      body: RefreshIndicator(
        backgroundColor: Colors.black,
        color: Colors.white,
        onRefresh: () => context.read<AllProductCubit>().loadFirstPage(),
        child: CustomScrollView(
          controller: controller,
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.r),
                child: Column(
                  children: [
                    25.vs,
                    AppInput(
                      onChanged: (value) =>
                          context.read<AllProductCubit>().search(value),
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
                      onPressed: () =>
                          context.pushName(page: AppRouteName.allProduct),
                    ),
                    15.vs,
                    HomeCategoryGridView(),
                    19.vs,
                    HomeTitle(
                      title: 'أحدث المنتجات',
                      subTitle: 'عرض المزيد',
                      onPressed: () =>
                          context.pushName(page: AppRouteName.allProduct),
                    ),
                    16.vs,
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              sliver: HomeProductGridView(),
            ),
          ],
        ),
      ),
    );
  }
}
