import 'package:flutter/material.dart';

class OrderModel {
  final int index;
  final String title;
  final Widget body;
  const OrderModel({
    required this.body,
    required this.index,
    required this.title,
  });
}
