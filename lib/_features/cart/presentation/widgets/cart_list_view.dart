import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/_features/cart/data/models/cart_model.dart';

import 'cart_item.dart';

class CartListView extends StatelessWidget {
  const CartListView({
    super.key, required this.cartModel,
  });
 final CartModel cartModel ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .5,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(
          vertical: 30.r,
          horizontal: 16.r,
        ),
        physics: BouncingScrollPhysics(),
        itemCount: cartModel.items.length,
        itemBuilder: (context, index) => CartItem(
          item: cartModel.items[index],
        ),
      ),
    );
  }
}
