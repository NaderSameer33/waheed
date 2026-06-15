import 'package:flutter/widgets.dart';
import 'package:waheed/_features/home/pages/cart/presentation/views/cart_view.dart';
import 'package:waheed/_features/home/pages/home/presentation/views/home_page.dart';
import 'package:waheed/_features/home/pages/orders/presentation/views/order_view.dart';
import 'package:waheed/_features/home/pages/profile/presentation/views/profile_view.dart';

final list = const [
  NavBarModel(
    label: 'الرئيسية',
    image: 'home.svg',
    activeImage: 'active_home.svg',
  ),
  NavBarModel(
    label: 'طلباتي',
    image: 'order.svg',
    activeImage: 'active_order.svg',
  ),
  NavBarModel(
    label: 'العربة',
    image: 'cart.svg',
    activeImage: 'active_cart.svg',
  ),
  NavBarModel(
    label: 'حسابي',
    image: 'profile.svg',
    activeImage: 'active_profile.svg',
  ),
];

class NavBarModel {
  final String label, image, activeImage;

  const NavBarModel({
    required this.label,
    required this.image,
    required this.activeImage,
  });
}
