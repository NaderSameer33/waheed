import 'package:flutter/material.dart';

extension NavigatorExtenstion on BuildContext {
  void pushName({required String page, Object? arguments}) =>
      Navigator.pushNamed(this, page, arguments: arguments);

  void popName() => Navigator.pop(this);

  void pushReplacment({required String page, Object? arguments}) =>
      Navigator.pushReplacementNamed(this, page, arguments: arguments);

  void pushRemoveUtil({
    required String page,
    Object? arguments,
    bool canPop = true,
  }) => Navigator.pushNamedAndRemoveUntil(this, page, (_) => canPop);
}
