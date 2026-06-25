import 'package:flutter/material.dart';
import '../../../cart/presentation/widgets/cart_summary_order.dart';
import 'home_drive_cash.dart';
import 'recive_details_shop.dart';
import '../../../../core/extensions/sizedbox_extenstion.dart';

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
