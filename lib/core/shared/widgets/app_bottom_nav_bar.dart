import 'package:flutter/material.dart';
import 'package:waheed/_features/home/data/models/app_bottom_nav_model.dart';
import 'package:waheed/core/shared/utils/app_colors.dart';
import 'package:waheed/core/shared/widgets/app_image.dart';

class AppBottomNavBar extends StatefulWidget {
  const AppBottomNavBar({super.key, required this.onChange});
  final ValueChanged<int> onChange;

  @override
  State<AppBottomNavBar> createState() => _AppBottomNavBarState();
}

class _AppBottomNavBarState extends State<AppBottomNavBar> {
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
        setState(() {
          _currentIndex = value;
        });

        widget.onChange(_currentIndex);
      },
      items: List.generate(
        list.length,
        (index) => BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: AppImage(image: list[index].image),
          activeIcon: AppImage(
            image: list[index].activeImage,
          ),
          label: list[index].label,
        ),
      ),
    );
  }
}
