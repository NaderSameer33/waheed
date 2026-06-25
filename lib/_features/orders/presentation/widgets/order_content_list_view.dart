import 'package:flutter/material.dart';
import 'order_content_item.dart';

class OrderContentListView extends StatelessWidget {
  const OrderContentListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) => OrderContentItem(),
      ),
    );
  }
}
