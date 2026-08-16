import 'package:waheed/_features/all_products/data/models/all_produts_model.dart';

class AllProductState {
  final List<Proudtcs> products;

  final bool isLoading;
  final bool isLoadingMore;
  final bool hasMore;
  final String error;

  AllProductState({
    this.products = const [],
    this.isLoading = false,
    this.isLoadingMore = false,
    this.hasMore = true,
    this.error = '',
  });

  AllProductState copyWith({
    List<Proudtcs>? products,
    bool? isLoading,
    bool? isLoadingMore,
    bool? hasMore,
    String? error,
  }) {
    return AllProductState(
      products: products ?? this.products,
      error: error ?? '',
      isLoading: isLoading ?? this.isLoading,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      hasMore: hasMore ?? this.hasMore,
    );
  }
}