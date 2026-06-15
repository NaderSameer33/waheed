import 'package:flutter/material.dart';
import 'package:waheed/core/shared/utils/app_colors.dart';
import 'package:waheed/core/shared/widgets/app_image.dart';

class AppBottomNavBar extends StatefulWidget {
  const AppBottomNavBar({super.key});

  @override
  State<AppBottomNavBar> createState() => _AppBottomNavBarState();
}

class _AppBottomNavBarState extends State<AppBottomNavBar> {
  final _list = const [
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
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: AppColors.navBarColor,
      selectedItemColor: Colors.black,

      showSelectedLabels: true,
      showUnselectedLabels: true,
      currentIndex: _currentIndex,
      onTap: (value) {
        _currentIndex = value;
        setState(() {});
      },
      items: List.generate(
        _list.length,
        (index) => BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: AppImage(image: _list[index].image),
          activeIcon: AppImage(
            image: _list[index].activeImage,
          ),
          label: _list[index].label,
        ),
      ),
    );
  }
}

class NavBarModel {
  final String label, image, activeImage;
  const NavBarModel({
    required this.label,
    required this.image,
    required this.activeImage,
  });
}
