import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:waheed/_features/all_products/presentation/cubit/all_product_cubit.dart';
import 'package:waheed/_features/all_products/presentation/cubit/all_product_state.dart';
import 'package:waheed/_features/home_details/presentation/view/home_details.dart';
import 'package:waheed/core/router/app_page_router.dart';
import 'package:waheed/core/shared/widgets/api_error_view.dart';
import 'home_product_item.dart';

class HomeProductGridView extends StatelessWidget {
  const HomeProductGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllProductCubit, AllProductState>(
      builder: (context, state) {
        if (state.isLoading) {
          return SliverToBoxAdapter(
            child: Center(
              child: LoadingAnimationWidget.threeArchedCircle(
                color: Colors.black,
                size: 30,
              ),
            ),
          );
        } else if (state.error != null) {
          return SliverToBoxAdapter(
            child: SizedBox(
              height: 340.h,
              child: ApiErrorView(
                error: state.error!,
                onRetry: () => context.read<AllProductCubit>().retry(),
              ),
            ),
          );
        } else if (state.products.isEmpty) {
          return SliverToBoxAdapter(
            child: SizedBox(
              height: 300.h,
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.inventory_2_outlined,
                      size: 48.sp,
                      color: Colors.grey.shade400,
                    ),
                    SizedBox(height: 12.h),
                    Text(
                      'لا توجد منتجات',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }

        return SliverMainAxisGroup(
          slivers: [
            SliverGrid.builder(
              itemCount: state.products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 177.w / 270.h,
                mainAxisSpacing: 16.r,
                crossAxisSpacing: 16.r,
              ),
              itemBuilder: (context, index) {
                final cubit = context.read<AllProductCubit>();
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    AppPageRoute(
                      page: BlocProvider.value(
                        value: cubit,
                        child: HomeDetails(product: state.products[index]),
                      ),
                    ),
                  ),
                  child: HomeProductItem(
                    product: state.products[index],
                  ),
                );
              },
            ),
            if (state.isLoadingMore)
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 24.h),
                  child: Center(
                    child: LoadingAnimationWidget.threeArchedCircle(
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
