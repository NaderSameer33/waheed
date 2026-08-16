class CategoryModel {
  late String nameAr, nameEn, icon;
  late int id;

  static List<String> iamges = [
    'suit.svg',
    'tshirt.svg',
    'suit.svg',
    'tshirt.svg',
    'suit.svg',
    'tshirt.svg',
  ];

  CategoryModel.fromJson(Map<String, dynamic> json) {
    nameAr = json['nameAr'];
    nameEn = json['nameEn'];
    id = json['id'];
  }
}

class CategoryArg {
  final int id;
  final String name;
  CategoryArg({required this.id, required this.name});
}
