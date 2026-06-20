import 'package:flutter/material.dart';
import 'package:waheed/_features/orders/presentation/widgets/order_bottom_sheet.dart';
import '../shared/widgets/custom_bottom_sheet.dart';

void showModelSheet(BuildContext context) => showModalBottomSheet(
  context: context,
  builder: (context) => CustomBottomSheet(),
);
void showOrderBottomSheet(BuildContext context) => showModalBottomSheet(
  context: context,
  builder: (context) => OrderBottomSheet(),
);
