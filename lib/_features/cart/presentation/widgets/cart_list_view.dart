import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:waheed/_features/cart/presentation/cubit/cart_cubit.dart';
import 'package:waheed/_features/cart/presentation/cubit/cart_state.dart';
import 'package:waheed/core/shared/widgets/api_error_view.dart';
import 'cart_item.dart';

class CartListView extends StatelessWidget {
  const CartListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .5,
      child: BlocBuilder<CartCubit, CartState>(
        builder: (context, state) {
          if (state.status == CartStatus.loading) {
            return Center(
              child: LoadingAnimationWidget.threeArchedCircle(
                color: Colors.black,
                size: 30,
              ),
            );
          } else if (state.status == CartStatus.failure) {
            return Center(
              child: ApiErrorView(
                error: state.error!,
                onRetry: context.read<CartCubit>().getCartProduct,
              ),
            );
          }

          return ListView.builder(
            padding: EdgeInsets.symmetric(
              vertical: 30.r,
              horizontal: 16.r,
            ),
            physics: BouncingScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) => CartItem(),
          );
        },
      ),
    );
  }
}
