import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waheed/_features/all_products/data/repos/app_proudct_repo.dart';
import 'package:waheed/_features/all_products/presentation/cubit/all_product_state.dart';

class AllProductCubit extends Cubit<AllProductState> {
  AllProductCubit({required this.allProductsRepo}) : super(AllProductState());

  final AllProductsRepo allProductsRepo;

  static const int pageSize = 20;
  static const int firstPage = 1;
  int page = firstPage;

  bool isFeatching = false;

  Future<void> loadFirstPage() async {
    if (isFeatching) return;
    page = firstPage;
    emit(state.copyWith(isLoading: true, hasMore: true));
    await _featch();
  }

  Future<void> _featch() async {
    isFeatching = true;

    try {
      final products = await allProductsRepo.getProduts(
        pageSize: pageSize,
        pageIndex: page,
      );
      if (isClosed) return;
      final allProducts = page == firstPage
          ? products
          : [...state.products, ...products];
      emit(
        state.copyWith(
          products: allProducts,
          isLoading: false,
          isLoadingMore: false,
          hasMore: products.length == pageSize,
        ),
      );
      page++;
    } on DioException catch (e) {
      if (isClosed) return;
      emit(
        state.copyWith(
          error: e.toString(),
          isLoading: false,
          isLoadingMore: false,
        ),
      );
    } finally {
      isFeatching = false;
    }
  }

  Future<void> retry() =>
      state.products.isEmpty ? loadFirstPage() : loadNextPage();
  Future<void> loadNextPage() async {
    if (isFeatching || state.isLoading || !state.hasMore) return;
    emit(state.copyWith(isLoadingMore: true));
    await _featch();
  }
}
