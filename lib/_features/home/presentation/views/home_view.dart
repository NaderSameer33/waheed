import 'package:flutter/material.dart';
import 'package:waheed/_features/home/presentation/widgets/home_app_Bar.dart';
import 'package:waheed/core/shared/utils/app_colors.dart';
import 'package:waheed/core/shared/widgets/app_bottom_nav_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: HomeAppBar(),

      bottomNavigationBar: AppBottomNavBar(),
    );
  }
}
