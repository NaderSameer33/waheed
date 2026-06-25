import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/_features/cart/presentation/widgets/cart_cupon_item.dart';
import 'package:waheed/_features/cart/presentation/widgets/cart_list_view.dart';
import 'package:waheed/_features/cart/presentation/widgets/cart_nav_bar.dart';
import 'package:waheed/_features/cart/presentation/widgets/cart_summary_order.dart';
import 'package:waheed/core/extensions/navigator_extenstion.dart';
import 'package:waheed/core/router/app_route_name.dart';
import 'package:waheed/core/shared/utils/app_colors.dart';

import 'package:waheed/core/shared/widgets/custom_app_bar.dart';

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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CartListView(),

            CartCuponItem(),
            CartSummaryOrder(),
          ],
        ),
      ),
      bottomNavigationBar: CartNavBar(
        title: 'إتمام التسوق',
        onPressed: () => context.pushName(page: AppRouteName.checkOut),
      ),
    );
  }
}
