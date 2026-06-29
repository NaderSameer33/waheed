import 'package:flutter/material.dart';
import '../../_features/orders/presentation/widgets/order_bottom_sheet.dart';
import '../shared/widgets/custom_bottom_sheet.dart';

void showModelSheet(BuildContext context) => showModalBottomSheet(
  context: context,
  builder: (context) => CustomBottomSheet(),
);
void showOrderBottomSheet(BuildContext context) => showModalBottomSheet(
  context: context,
  builder: (context) => OrderBottomSheet(),
);

void showSnakBar(context, {required String text , bool isError = false}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: isError ? Colors.red : Colors.green ,
      content: Text(
        text,
        style: TextStyle(
          color: Colors.white,

          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
