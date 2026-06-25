import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
