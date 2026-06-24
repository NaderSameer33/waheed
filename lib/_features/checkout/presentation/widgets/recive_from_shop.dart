import 'package:flutter/material.dart';
import 'package:waheed/_features/cart/presentation/widgets/cart_summary_order.dart';
import 'package:waheed/_features/checkout/presentation/widgets/home_drive_cash.dart';
import 'package:waheed/_features/checkout/presentation/widgets/recive_details_shop.dart';
import 'package:waheed/core/extensions/sizedbox_extenstion.dart';

class ReciveFromShop extends StatelessWidget {
  const ReciveFromShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ReciveDetailsShop(),
        24.vs,
        HomeDriveCash(),
        24.vs,
        CartSummaryOrder(),
      ],
    );
  }
}
