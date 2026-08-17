import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:waheed/_features/all_products/data/models/all_produts_model.dart'
    hide Colors;
import 'package:waheed/_features/all_products/presentation/cubit/all_product_cubit.dart';
import 'package:waheed/_features/all_products/presentation/cubit/all_product_state.dart';
import 'package:waheed/core/shared/widgets/api_error_view.dart';
import '../../../home/pages/home/presentation/widgets/home_product_item.dart';

class SimilarProductListView extends StatefulWidget {
  const SimilarProductListView({
    super.key,
    required this.proudtcs,
  });
  final Proudtcs proudtcs;

  @override
  State<SimilarProductListView> createState() => _SimilarProductListViewState();
}

class _SimilarProductListViewState extends State<SimilarProductListView> {
  @override
  void initState() {
    super.initState();
    context.read<AllProductCubit>().loadFirstPage(
      categoryId: widget.proudtcs.categoryId,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllProductCubit, AllProductState>(
      builder: (context, state) {
        if (state.isLoading) {
          return Center(
            child: LoadingAnimationWidget.threeArchedCircle(
              color: Colors.black,
              size: 30,
            ),
          );
        } else if (state.products.isEmpty) {
          return Center(
            child: Text('لا يوجد منتجات'),
          );
        } else if (state.error != null) {
          return ApiErrorView(error: state.error!);
        }
        return ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: state.products.length,
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.only(left: 16.r),
            child: SizedBox(
              width: 160.w,
              child: HomeProductItem(
                product: state.products[index],
                isDetails: true,
              ),
            ),
          ),
        );
      },
    );
  }
}
