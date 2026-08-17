import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waheed/_features/cart/data/models/cart_model.dart';
import 'package:waheed/_features/cart/presentation/cubit/cart_state.dart';
import 'package:waheed/core/services/api/api_error_handler.dart';
import 'package:waheed/core/services/api/dio_helper.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit({required this.dioHelper}) : super(CartState());
  final DioHelper dioHelper;

  Future<void> getCartProduct() async {
    emit(
      state.copyWith(
        status: CartStatus.loading,
      ),
    );
    try {
      final response = await dioHelper.getData(endPoint: 'api/Cart');
      final result = CartModel.fromJson(response.data);
      if (isClosed) return;
      emit(state.copyWith(status: CartStatus.success, cartModel: result));
    } on DioException catch (e) {
      if (isClosed) return;
      emit(
        state.copyWith(
          status: CartStatus.failure,
          error: ApiErrorHandler().handlerDioError(e),
        ),
      );
    }
  }
}
