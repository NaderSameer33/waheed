import 'package:flutter/material.dart';
import '../../../cart/presentation/views/cart_view.dart';
import '../../pages/home/presentation/views/home_page.dart';
import '../../../orders/presentation/views/order_view.dart';
import '../../../profile/presentation/views/profile_view.dart';
import '../widgets/home_app_Bar.dart';
import '../../../../core/shared/utils/app_colors.dart';
import '../../../../core/shared/widgets/app_bottom_nav_bar.dart';

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
