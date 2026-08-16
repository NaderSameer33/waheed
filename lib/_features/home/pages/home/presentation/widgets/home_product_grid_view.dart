import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:waheed/_features/all_products/presentation/cubit/all_product_cubit.dart';
import 'package:waheed/_features/all_products/presentation/cubit/all_product_state.dart';
import 'home_product_item.dart';
import '../../../../../../core/extensions/navigator_extenstion.dart';
import '../../../../../../core/router/app_route_name.dart';

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
        } else if (state.error.isNotEmpty) {
          return SliverToBoxAdapter(
            child: SizedBox(
              height: 300.h,
              child: Center(
                child: Text(state.error),
              ),
            ),
          );
        } else if (state.products.isEmpty) {
          return SliverToBoxAdapter(
            child: SizedBox(
              height: 300.h,
              child: Center(
                child: Text('no Products Found '),
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
                return GestureDetector(
                  onTap: () => context.pushName(page: AppRouteName.details),
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
