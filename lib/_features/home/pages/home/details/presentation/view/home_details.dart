import 'package:flutter/material.dart';
import 'package:waheed/core/shared/widgets/custom_app_bar.dart';

class HomeDetails extends StatelessWidget {
  const HomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'تفاصيل المنتج',
      ),
    );
  }
}
