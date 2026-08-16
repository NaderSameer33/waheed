import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waheed/_features/all_products/data/models/all_produts_model.dart';
import 'package:waheed/_features/all_products/data/repos/app_proudct_repo.dart';
import 'package:waheed/_features/all_products/presentation/cubit/all_product_state.dart';
import 'package:waheed/core/services/api/api_error.dart';
import 'package:waheed/core/services/api/api_error_handler.dart';

class AllProductCubit extends Cubit<AllProductState> {
  AllProductCubit({required this.allProductsRepo}) : super(AllProductState());

  final AllProductsRepo allProductsRepo;

  static const int pageSize = 20;
  static const int firstPage = 1;
  int page = firstPage;

  bool isFeatching = false;

  List<Proudtcs> _allProducts = [];
  String _searchQuery = '';
  int? _categoryId;

  Future<void> loadFirstPage({int? categoryId}) async {
    if (isFeatching) return;
    page = firstPage;
    _allProducts = [];
    _searchQuery = '';
    _categoryId = categoryId;
    emit(state.copyWith(isLoading: true, hasMore: true, clearError: true));
    await _featch();
  }

  Future<void> _featch() async {
    isFeatching = true;

    try {
      final products = await allProductsRepo.getProduts(
        pageSize: pageSize,
        pageIndex: page,
        categoryId: _categoryId,
      );
      if (isClosed) return;
      _allProducts.addAll(products);
      emit(
        state.copyWith(
          products: _applySearch(),
          isLoading: false,
          isLoadingMore: false,
          hasMore: products.length == pageSize,
          clearError: true,
        ),
      );
      page++;
    } on DioException catch (e) {
      if (isClosed) return;
      emit(
        state.copyWith(
          error: ApiErrorHandler().handlerDioError(e),
          isLoading: false,
          isLoadingMore: false,
        ),
      );
    } catch (_) {
      if (isClosed) return;
      emit(
        state.copyWith(
          error: const ApiError(
            message: 'حدث خطأ ما',
            descrption: 'حدث خطأ غير متوقع. يرجى المحاولة مرة أخرى.',
            iconData: CupertinoIcons.exclamationmark_triangle,
          ),
          isLoading: false,
          isLoadingMore: false,
        ),
      );
    } finally {
      isFeatching = false;
    }
  }

  List<Proudtcs> _applySearch() {
    final query = _searchQuery.trim().toLowerCase();
    if (query.isEmpty) return _allProducts;
    return _allProducts
        .where(
          (p) =>
              p.nameAr.toLowerCase().contains(query) ||
              p.nameEn.toLowerCase().contains(query),
        )
        .toList();
  }

  void search(String query) {
    _searchQuery = query;
    emit(state.copyWith(products: _applySearch()));
  }

  Future<void> retry() =>
      state.products.isEmpty ? loadFirstPage() : loadNextPage();
  Future<void> loadNextPage() async {
    if (isFeatching ||
        state.isLoading ||
        !state.hasMore ||
        _searchQuery.trim().isNotEmpty) {
      return;
    }
    emit(state.copyWith(isLoadingMore: true));
    await _featch();
  }
}
