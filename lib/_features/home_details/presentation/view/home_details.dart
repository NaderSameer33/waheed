import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/extensions/sizedbox_extenstion.dart';
import '../../../../core/shared/utils/app_colors.dart';
import '../../../../core/shared/widgets/custom_app_bar.dart';
import '../../../home/pages/home/presentation/widgets/rate_product.dart';
import '../widgets/details_product_colors.dart';
import '../widgets/details_product_descrption.dart';
import '../widgets/details_product_photo.dart';
import '../widgets/detials_quality_and_driver.dart';
import '../widgets/home_details_nav_bar.dart';
import '../widgets/similar_product.dart';

class HomeDetails extends StatelessWidget {
  const HomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: CustomAppBar(
        isAction: true,
        title: 'تفاصيل المنتج',
        isSearch: false,
        height: 70,
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          DetailsProductPhoto(),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.r),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  16.vs,
                  Text(
                    'بدلة كلاسيكية',
                    style: TextStyle(
                      color: Color(0xffC9A961),
                      fontWeight: FontWeight.bold,
                      fontSize: 12.sp,
                    ),
                  ),
                  4.vs,
                  Text(
                    'بدلة رجالية رصاصي فاخرة',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp,
                    ),
                  ),
                  8.vs,
                  RateProduct(),
                  16.vs,
                  DetailsQulityAndDriver(),
                  2.vs,
                  Divider(),
                  16.vs,

                  DetailsProductColor(),

                  DetailsProductDescrption(),

                  SimilarProduct(),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: HomeDetaislNavBar(),
    );
  }
}
