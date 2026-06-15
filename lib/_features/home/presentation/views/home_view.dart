import 'package:flutter/material.dart';
import 'package:waheed/_features/home/data/models/app_bottom_nav_model.dart';
import 'package:waheed/_features/home/pages/cart/presentation/views/cart_view.dart';
import 'package:waheed/_features/home/pages/home/presentation/views/home_page.dart';
import 'package:waheed/_features/home/pages/orders/presentation/views/order_view.dart';
import 'package:waheed/_features/home/pages/profile/presentation/views/profile_view.dart';
import 'package:waheed/_features/home/presentation/widgets/home_app_Bar.dart';
import 'package:waheed/core/shared/utils/app_colors.dart';
import 'package:waheed/core/shared/widgets/app_bottom_nav_bar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int curentIndex = 0;
  final _list = [
    HomePage(),
    OrderView(),
    CartView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: HomeAppBar(),
      body: IndexedStack(index: curentIndex, children: _list),
      bottomNavigationBar: AppBottomNavBar(
        onChange: (value) {
          setState(() {
            curentIndex = value;
          });
        },
      ),
    );
  }
}
