import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/_features/cart/presentation/widgets/cart_item.dart';

class CartListView extends StatelessWidget {
  const CartListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.symmetric(
          vertical: 30.r,
          horizontal: 16.r,
        ),
        physics: BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) => CartItem(),
      ),
    );
  }
}
