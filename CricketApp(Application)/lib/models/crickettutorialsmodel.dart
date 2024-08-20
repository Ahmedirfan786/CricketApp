// To parse this JSON data, do
//
//     final crickettutorials = crickettutorialsFromJson(jsonString);

import 'dart:convert';

List<Crickettutorials> crickettutorialsFromJson(String str) => List<Crickettutorials>.from(json.decode(str).map((x) => Crickettutorials.fromJson(x)));

String crickettutorialsToJson(List<Crickettutorials> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Crickettutorials {
  String id;
  String catId;
  String title;
  String image;
  String video;

  Crickettutorials({
    required this.id,
    required this.catId,
    required this.title,
    required this.image,
    required this.video,
  });

  factory Crickettutorials.fromJson(Map<String, dynamic> json) => Crickettutorials(
    id: json["id"],
    catId: json["cat_id"],
    title: json["title"],
    image: json["image"],
    video: json["video"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "cat_id": catId,
    "title": title,
    "image": image,
    "video": video,
  };
}
