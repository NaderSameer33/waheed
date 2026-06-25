import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/order_content_list_view.dart';
import '../widgets/order_header_list_view.dart';
import '../../../../core/extensions/sizedbox_extenstion.dart';
import '../../../../core/shared/widgets/custom_app_bar.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'طلباتي',
        isSearch: false,
        isBack: false,
        height: 56.h,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.r),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: OrderHeaderListView()),
            SliverToBoxAdapter(
              child: 24.vs,
            ),
            SliverToBoxAdapter(
              child: Text(
                'مايو ٢٠٢٦',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.sp,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: 24.vs,
            ),

            SliverFillRemaining(
              child: OrderContentListView(),
            ),
          ],
        ),
      ),
    );
  }
}
