import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/_features/cart/presentation/widgets/cart_item.dart';
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CartItem(),
            ],
          ),
        ),
      ),
    );
  }
}
