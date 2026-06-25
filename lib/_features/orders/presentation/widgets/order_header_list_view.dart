import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'order_header_item.dart';
import '../../../../core/func/helper_function.dart';

class OrderHeaderListView extends StatefulWidget {
  const OrderHeaderListView({super.key});

  @override
  State<OrderHeaderListView> createState() => _OrderHeaderListViewState();
}

class _OrderHeaderListViewState extends State<OrderHeaderListView> {
  final _list = [
    'كل الفترات',
    'الكل',
    'قيد المعالجة',
    'تم التسليم',
    'قيد التوصيل ',
    'ملغي ',
  ];
  int currentIndex = -1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: _list.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            if (index == 0) {
              showOrderBottomSheet(context);
            }
            setState(() {
              currentIndex = index;
            });
          },
          child: OrderHeaderItem(
            currentIndex: index,
            title: _list[index],
            isActive: currentIndex == index,
          ),
        ),
      ),
    );
  }
}
