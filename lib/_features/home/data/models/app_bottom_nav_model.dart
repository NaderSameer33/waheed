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
