import 'package:flutter/material.dart';
import 'package:waheed/core/shared/widgets/custom_bottom_sheet.dart';

void showModelSheet(BuildContext context) => showModalBottomSheet(
  context: context,
  builder: (context) => CustomBottomSheet(),
);
