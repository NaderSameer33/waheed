import 'package:waheed/_features/cart/data/models/cart_model.dart';
import 'package:waheed/core/services/api/api_error.dart';

enum CartStatus { intinal, loading, success, failure }

class CartState {
  final CartStatus status;
  final CartModel? cartModel;
  final ApiError? error;
  final String? errorMessage;

  final Set<int> loadingItemId;

  CartState({
    this.errorMessage,
    this.status = CartStatus.intinal,
    this.cartModel,
    this.error,
    this.loadingItemId = const {},
  });

  CartState copyWith({
    CartStatus? status,
    CartModel? cartModel,
    ApiError? error,
    Set<int>? loadingItemId,
    String? errorMessage,
  }) {
    return CartState(
      errorMessage: errorMessage ?? this.errorMessage,
      status: status ?? this.status,
      cartModel: cartModel ?? this.cartModel,
      error: error ?? this.error,
      loadingItemId: loadingItemId ?? this.loadingItemId,
    );
  }
}
