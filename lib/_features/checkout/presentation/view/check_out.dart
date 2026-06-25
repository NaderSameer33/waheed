import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/_features/cart/presentation/widgets/cart_nav_bar.dart';
import 'package:waheed/_features/checkout/data/models/order_model.dart';
import 'package:waheed/_features/checkout/presentation/view/complete_order_view.dart';
import 'package:waheed/_features/checkout/presentation/view/done_order_view.dart';
import 'package:waheed/_features/checkout/presentation/view/review_order_view.dart';
import 'package:waheed/_features/checkout/presentation/widgets/build_order_progress_bar.dart';
import 'package:waheed/core/enums/order_enum.dart';
import 'package:waheed/core/extensions/navigator_extenstion.dart';
import 'package:waheed/core/extensions/sizedbox_extenstion.dart';
import 'package:waheed/core/shared/widgets/custom_app_bar.dart';

class CheckOutView extends StatefulWidget {
  const CheckOutView({super.key});

  @override
  State<CheckOutView> createState() => _CheckOutViewState();
}

class _CheckOutViewState extends State<CheckOutView> {
  OrderEnum orderEnum = OrderEnum.completeOrder;

  void canPop() {
    switch (orderEnum) {
      case OrderEnum.completeOrder:
        context.popName();
      case OrderEnum.reviewOrder:
        setState(() {
          orderEnum = OrderEnum.completeOrder;
        });
      case OrderEnum.doneOrder:
        setState(() {
          orderEnum = OrderEnum.reviewOrder;
        });
    }
  }

  OrderModel buildOrder() {
    switch (orderEnum) {
      case OrderEnum.completeOrder:
        return OrderModel(
          onPressed: () {
            setState(() {
              orderEnum = OrderEnum.reviewOrder;
            });
          },
          body: CompleteOrderView(),
          index: 0,
          title: 'إتمام الطلب',
        );
      case OrderEnum.reviewOrder:
        return OrderModel(
          onPressed: () {
            setState(() {
              orderEnum = OrderEnum.doneOrder;
            });
          },
          body: ReviewOrderView(),
          index: 1,
          title: 'مراجعه الطلب',
        );
      case OrderEnum.doneOrder:
        return OrderModel(
          onPressed: () {},
          body: DoneOrderView(),
          index: 2,
          title: '',
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    final orderModel = buildOrder();
    return Scaffold(
      appBar: CustomAppBar(
        onPressed: canPop,
        title: orderModel.title,
        isSearch: false,
        height: 56.h,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            BuildOrderBrogressBar(currentIndex: orderModel.index),
            16.vs,
            orderModel.body,
          ],
        ),
      ),
      bottomNavigationBar: CartNavBar(
        title: 'إتمام الطلب',
        onPressed: orderModel.onPressed,
      ),
    );
  }
}
