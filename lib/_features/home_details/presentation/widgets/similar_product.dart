import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waheed/_features/all_products/data/models/all_produts_model.dart'
    hide Colors;
import 'package:waheed/_features/all_products/presentation/cubit/all_product_cubit.dart';
import 'package:waheed/core/extensions/navigator_extenstion.dart';
import 'package:waheed/core/router/app_route_name.dart';
import 'package:waheed/core/services/di/injection.dart';
import 'similar_product_list_view.dart';
import '../../../../core/extensions/sizedbox_extenstion.dart';

class SimilarProduct extends StatelessWidget {
  const SimilarProduct({super.key, required this.proudtc, });
  final Proudtcs proudtc ; 

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
              onPressed: () => context.pushName(page: AppRouteName.allProduct),
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
          child: BlocProvider(
            create: (context) => s1<AllProductCubit>(),
            child: SimilarProductListView(
              proudtcs : proudtc ,
            ),
          ),
        ),
      ],
    );
  }
}
