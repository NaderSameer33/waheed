import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../home/pages/home/presentation/widgets/home_product_grid_view.dart';
import '../cubit/all_product_cubit.dart';

import '../../../../core/shared/utils/app_colors.dart';
import '../../../../core/shared/widgets/custom_app_bar.dart';

class AllProductView extends StatefulWidget {
  const AllProductView({super.key});

  @override
  State<AllProductView> createState() => _AllProductViewState();
}

class _AllProductViewState extends State<AllProductView> {
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
      appBar: CustomAppBar(
        height: 150.h,
        isAction: true,
        title: 'كل المنتجات',
      ),
      body: RefreshIndicator(
        onRefresh: () => context.read<AllProductCubit>().loadFirstPage(),
        child: CustomScrollView(
          controller: controller,
          slivers: [
            SliverPadding(
              padding: EdgeInsets.all(16.r),
              sliver: HomeProductGridView(),
            ),
          ],
        ),
      ),
    );
  }
}