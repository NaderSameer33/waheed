class AllProductModel {
  final int pageIndex;
  final int pageSize;
  final int totalCount;
  final int totalPages;
  final bool hasPreviousPage;
  final bool hasNextPage;
  final List<Proudtcs> data;

  AllProductModel({
    this.pageIndex = 0,
    this.pageSize = 0,
    this.totalCount = 0,
    this.totalPages = 0,
    this.hasPreviousPage = false,
    this.hasNextPage = false,
    this.data = const [],
  });

  factory AllProductModel.fromJson(Map<String, dynamic> json) {
    return AllProductModel(
      pageIndex: json['pageIndex'] ?? 0,
      pageSize: json['pageSize'] ?? 0,
      totalCount: json['totalCount'] ?? 0,
      totalPages: json['totalPages'] ?? 0,
      hasPreviousPage: json['hasPreviousPage'] ?? false,
      hasNextPage: json['hasNextPage'] ?? false,
      data: (json['data'] as List<dynamic>? ?? [])
          .map((v) => Proudtcs.fromJson(v))
          .toList(),
    );
  }
}

class Proudtcs {
  final int id;
  final String nameAr;
  final String nameEn;
  final String descriptionAr;
  final String descriptionEn;
  final num price;
  final num discountPrice;
  final num averageRating;
  final num reviewCount;
  final num stockQuantity;
  final bool isCustomizable;
  final bool isRental;
  final int categoryId;
  final String categoryName;
  final String mainImageUrl;
  final List<Images> images;
  final List<Colors> colors;

  Proudtcs({
    this.id = 0,
    this.nameAr = '',
    this.nameEn = '',
    this.descriptionAr = '',
    this.descriptionEn = '',
    this.price = 0,
    this.discountPrice = 0,
    this.averageRating = 0,
    this.reviewCount = 0,
    this.stockQuantity = 0,
    this.isCustomizable = false,
    this.isRental = false,
    this.categoryId = 0,
    this.categoryName = '',
    this.mainImageUrl = '',
    this.images = const [],
    this.colors = const [],
  });

  factory Proudtcs.fromJson(Map<String, dynamic> json) {
    return Proudtcs(
      id: json['id'] ?? 0,
      nameAr: json['nameAr'] ?? '',
      nameEn: json['nameEn'] ?? '',
      descriptionAr: json['descriptionAr'] ?? '',
      descriptionEn: json['descriptionEn'] ?? '',
      price: json['price'] ?? 0,
      discountPrice: json['discountPrice'] ?? 0,
      averageRating: json['averageRating'] ?? 0,
      reviewCount: json['reviewCount'] ?? 0,
      stockQuantity: json['stockQuantity'] ?? 0,
      isCustomizable: json['isCustomizable'] ?? false,
      isRental: json['isRental'] ?? false,
      categoryId: json['categoryId'] ?? 1,
      categoryName: json['categoryName'] ?? '',
      mainImageUrl: json['mainImageUrl'] ?? '',
      images: (json['images'] as List<dynamic>? ?? [])
          .map((v) => Images.fromJson(v))
          .toList(),
      colors: (json['colors'] as List<dynamic>? ?? [])
          .map((v) => Colors.fromJson(v))
          .toList(),
    );
  }
}

class Images {
  final int id;
  final String imageUrl;
  final bool isMain;

  Images({this.id = 0, this.imageUrl = '', this.isMain = false});

  factory Images.fromJson(Map<String, dynamic> json) {
    return Images(
      id: json['id'] ?? 0,
      imageUrl: json['imageUrl'] ?? '',
      isMain: json['isMain'] ?? false,
    );
  }
}

class Colors {
  final int id;
  final String colorNameAr;
  final String colorNameEn;
  final String colorHex;

  Colors({
    this.id = 0,
    this.colorNameAr = '',
    this.colorNameEn = '',
    this.colorHex = '',
  });

  factory Colors.fromJson(Map<String, dynamic> json) {
    return Colors(
      id: json['id'] ?? 0,
      colorNameAr: json['colorNameAr'] ?? '',
      colorNameEn: json['colorNameEn'] ?? '',
      colorHex: json['colorHex'] ?? '',
    );
  }
}