import 'package:waheed/_features/categories/data/models/category_model.dart';

class CategoryState {}

class CategoryLoadingState extends CategoryState {}

class CategorySuccessState extends CategoryState {
  final List<CategoryModel> model;
  CategorySuccessState(this.model);
}

class CategoryFailureState extends CategoryState {
  final String errorMessage;
  CategoryFailureState(this.errorMessage);
}
