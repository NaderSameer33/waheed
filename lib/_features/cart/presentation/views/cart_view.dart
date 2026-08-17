import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:waheed/_features/cart/presentation/cubit/cart_cubit.dart';
import 'package:waheed/_features/cart/presentation/cubit/cart_state.dart';
import 'package:waheed/_features/cart/presentation/views/empty_cart_view.dart';
import 'package:waheed/core/shared/widgets/api_error_view.dart';
import '../widgets/cart_cupon_item.dart';
import '../widgets/cart_list_view.dart';
import '../widgets/cart_nav_bar.dart';
import '../widgets/cart_summary_order.dart';
import '../../../../core/extensions/navigator_extenstion.dart';
import '../../../../core/router/app_route_name.dart';
import '../../../../core/shared/utils/app_colors.dart';

import '../../../../core/shared/widgets/custom_app_bar.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: CustomAppBar(
        title: 'عربة التسوق',
        height: 56.h,
        isBack: false,
        isSearch: false,
      ),
      body: BlocBuilder<CartCubit, CartState>(
        builder: (context, state) {
          if (state.status == CartStatus.loading) {
            return Center(
              child: LoadingAnimationWidget.threeArchedCircle(
                color: Colors.black,
                size: 30,
              ),
            );
          } else if (state.status == CartStatus.failure) {
            return ApiErrorView(error: state.error!);
          } else if (state.cartModel!.items.isEmpty) {
            return Center(
              child: EmptyCartView(),
            );
          }

          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CartListView(
                  cartModel: state.cartModel!,
                ),

                CartCuponItem(),
                CartSummaryOrder(
                  cartModel: state.cartModel!,
                ),
                CartNavBar(
                  title: 'إتمام التسوق',
                  onPressed: () =>
                      context.pushName(page: AppRouteName.checkOut),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
