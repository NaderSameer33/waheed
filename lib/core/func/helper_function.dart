
import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';
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

void showSnakBar(context, {required String text, bool isError = false}) {
  toastification.show(
    context: context,
    title: Text(text),
    autoCloseDuration: const Duration(seconds: 5),
    type: isError ? ToastificationType.error : ToastificationType.success,
    style: ToastificationStyle.fillColored,
  );
}
