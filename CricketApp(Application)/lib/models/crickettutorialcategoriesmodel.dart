// To parse this JSON data, do
//
//     final crickettutorialcategories = crickettutorialcategoriesFromJson(jsonString);

import 'dart:convert';

List<Crickettutorialcategories> crickettutorialcategoriesFromJson(String str) => List<Crickettutorialcategories>.from(json.decode(str).map((x) => Crickettutorialcategories.fromJson(x)));

String crickettutorialcategoriesToJson(List<Crickettutorialcategories> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Crickettutorialcategories {
  String catId;
  String catName;
  String catImage;

  Crickettutorialcategories({
    required this.catId,
    required this.catName,
    required this.catImage,
  });

  factory Crickettutorialcategories.fromJson(Map<String, dynamic> json) => Crickettutorialcategories(
    catId: json["cat_id"],
    catName: json["cat_name"],
    catImage: json["cat_image"],
  );

  Map<String, dynamic> toJson() => {
    "cat_id": catId,
    "cat_name": catName,
    "cat_image": catImage,
  };
}
