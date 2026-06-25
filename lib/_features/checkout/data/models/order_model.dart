import 'package:flutter/material.dart';

class OrderModel {
  final int index;
  final String title;
  final Widget body;
  final VoidCallback onPressed;
  const OrderModel({
    required this.onPressed,
    required this.body,
    required this.index,
    required this.title,
  });
}
