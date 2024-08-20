// To parse this JSON data, do
//
//     final newsandblogs = newsandblogsFromJson(jsonString);

import 'dart:convert';

List<Newsandblogs> newsandblogsFromJson(String str) => List<Newsandblogs>.from(json.decode(str).map((x) => Newsandblogs.fromJson(x)));

String newsandblogsToJson(List<Newsandblogs> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Newsandblogs {
  String id;
  String title;
  String image;
  String coverImage;
  String description;
  String type;

  Newsandblogs({
    required this.id,
    required this.title,
    required this.image,
    required this.coverImage,
    required this.description,
    required this.type,
  });

  factory Newsandblogs.fromJson(Map<String, dynamic> json) => Newsandblogs(
    id: json["id"],
    title: json["title"],
    image: json["image"],
    coverImage: json["cover_image"],
    description: json["description"],
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "image": image,
    "cover_image": coverImage,
    "description": description,
    "type": type,
  };
}
