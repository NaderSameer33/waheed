import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waheed/_features/categories/cubit/category_state.dart';
import 'package:waheed/_features/categories/data/models/category_model.dart';
import 'package:waheed/core/services/api/dio_helper.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit({required this.dioHelper}) : super(CategoryState());
  final DioHelper dioHelper;

  Future<void> getCategory() async {
    emit(CategoryLoadingState());

    try {
      final response = await dioHelper.getData(endPoint: 'api/Categories');
      final results = (response.data as List)
          .map((e) => CategoryModel.fromJson(e))
          .toList();

      if (isClosed) return;

      emit(CategorySuccessState(results));
    } on DioException catch (e) {
      emit(CategoryFailureState(e.toString()));
    }
  }
}
