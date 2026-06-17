import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../home/pages/home/presentation/widgets/home_product_item.dart';

class SimilarProductListView extends StatelessWidget {
  const SimilarProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.only(left: 16.r),
        child: HomeProductItem(
          isDetails: true,
        ),
      ),
    );
  }
}
