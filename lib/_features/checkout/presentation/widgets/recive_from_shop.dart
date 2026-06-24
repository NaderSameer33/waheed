import 'package:flutter/material.dart';
import 'package:waheed/_features/checkout/presentation/widgets/recive_details_shop.dart';

class ReciveFromShop extends StatelessWidget {
  const ReciveFromShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ReciveDetailsShop(),
      ],
    );
  }
}
