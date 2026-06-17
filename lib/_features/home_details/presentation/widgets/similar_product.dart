import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'similar_product_list_view.dart';
import '../../../../core/extensions/sizedbox_extenstion.dart';

class SimilarProduct extends StatelessWidget {
  const SimilarProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'منتجات مشابهة',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18.sp,
              ),
            ),
            Spacer(),
            TextButton(
              onPressed: () {},
              child: Text(
                'عرض الكل',
                style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
        10.vs,
        SizedBox(
          height: MediaQuery.of(context).size.height * .4,
          child: SimilarProductListView(),
        ),
      ],
    );
  }
}
