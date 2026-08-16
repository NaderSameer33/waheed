import 'package:flutter/cupertino.dart';

class ApiError {
  final String message, descrption;
  final IconData iconData;

  const ApiError({
    required this.message,
    required this.descrption,
    required this.iconData,
  });
}
