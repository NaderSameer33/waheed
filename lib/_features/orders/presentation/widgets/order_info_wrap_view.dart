import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'order_bottom_sheet_info.dart';

class OrderInfoWrapView extends StatefulWidget {
  const OrderInfoWrapView({
    super.key,
  });

  @override
  State<OrderInfoWrapView> createState() => _OrderInfoWrapViewState();
}

class _OrderInfoWrapViewState extends State<OrderInfoWrapView> {
  final _list = [
    'كل الفترات',
    'آخر ٧ أيام',
    'آخر ٣٠ يوم',
    'آخر ٣ شهور',
    'هذه السنة',
    'نطاق مخصص',
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 16.h,
      children: List.generate(
        6,
        (index) => GestureDetector(
          onTap: () {
            setState(() {
              currentIndex = index;
            });
          },
          child: OrderBottomSheetInfo(
            title: _list[index],
            isActive: currentIndex == index,
          ),
        ),
      ),
    );
  }
}