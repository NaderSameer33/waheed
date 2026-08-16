class CategoryModel {
  late String nameAr, nameEn, icon;
  late int id;

  CategoryModel.fromJson(Map<String, dynamic> json) {
    nameAr = json['nameAr'];
    nameEn = json['nameEn'];
    id = json['id'];
    icon = json['iconUrl'];
  }
}
