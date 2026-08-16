import 'package:dio/dio.dart';
import 'package:waheed/_features/all_products/data/models/all_produts_model.dart';
import 'package:waheed/core/services/api/dio_helper.dart';

class AllProductsRepo {
  final DioHelper dioHelper;

  AllProductsRepo({required this.dioHelper});

  Future<List<Proudtcs>> getProduts({
    required int pageSize,
    required int pageIndex,
    int? categoryId,
  }) async {
    final response = await dioHelper.getData(
      endPoint: 'api/Products',
      queryParamter: {
        "PageSize": pageSize,
        "PageIndex": pageIndex,
        if (categoryId != null) "CategoryId": categoryId,
      },
    );

    return AllProductModel.fromJson(response.data).data;
  }
}
