class CartModel {
  final String userId;
  final List<CartItemModel> items;
  final double totalPrice;
  final int totalItems;

  const CartModel({
    required this.userId,
    required this.items,
    required this.totalPrice,
    required this.totalItems,
  });

  factory CartModel.fromJson(Map<String, dynamic> json) {
    return CartModel(
      userId: json['userId'] as String,
      items: (json['items'] as List<dynamic>)
          .map(
            (item) => CartItemModel.fromJson(
              item as Map<String, dynamic>,
            ),
          )
          .toList(),
      totalPrice: (json['totalPrice'] as num).toDouble(),
      totalItems: json['totalItems'] as int,
    );
  }
  CartModel copyWith({
    String? userId,
    List<CartItemModel>? items,
    double? totalPrice,
    int? totalItems,
  }) {
    return CartModel(
      userId: userId ?? this.userId,
      items: items ?? this.items,
      totalPrice: totalPrice ?? this.totalPrice,
      totalItems: totalItems ?? this.totalItems,
    );
  }
}

class CartItemModel {
  final int id;
  final int productId;
  final String productNameAr;
  final String productNameEn;
  final String mainImageUrl;
  final double price;
  final int quantity;
  final int? measurementProfileId;
  final String? measurementProfileName;

  const CartItemModel({
    required this.id,
    required this.productId,
    required this.productNameAr,
    required this.productNameEn,
    required this.mainImageUrl,
    required this.price,
    required this.quantity,
    this.measurementProfileId,
    this.measurementProfileName,
  });

  factory CartItemModel.fromJson(Map<String, dynamic> json) {
    return CartItemModel(
      id: json['id'] as int,
      productId: json['productId'] as int,
      productNameAr: json['productNameAr'] as String,
      productNameEn: json['productNameEn'] as String,
      mainImageUrl: json['mainImageUrl'] as String,
      price: (json['price'] as num).toDouble(),
      quantity: json['quantity'] as int,
      measurementProfileId: json['measurementProfileId'] as int?,
      measurementProfileName: json['measurementProfileName'] as String?,
    );
  }
  CartItemModel copyWith({
    int? id,
    int? productId,
    String? productNameAr,
    String? productNameEn,
    String? mainImageUrl,
    double? price,
    int? quantity,
    int? measurementProfileId,
    String? measurementProfileName,
  }) {
    return CartItemModel(
      id: id ?? this.id,
      productId: productId ?? this.productId,
      productNameAr: productNameAr ?? this.productNameAr,
      productNameEn: productNameEn ?? this.productNameEn,
      mainImageUrl: mainImageUrl ?? this.mainImageUrl,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      measurementProfileId: measurementProfileId ?? this.measurementProfileId,
      measurementProfileName:
          measurementProfileName ?? this.measurementProfileName,
    );
  }
}
