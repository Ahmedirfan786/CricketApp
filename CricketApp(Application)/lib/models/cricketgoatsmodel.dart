// To parse this JSON data, do
//
//     final cricketgoats = cricketgoatsFromJson(jsonString);

import 'dart:convert';

List<Cricketgoats> cricketgoatsFromJson(String str) => List<Cricketgoats>.from(json.decode(str).map((x) => Cricketgoats.fromJson(x)));

String cricketgoatsToJson(List<Cricketgoats> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Cricketgoats {
  String id;
  String name;
  String image;
  String country;
  String type;
  String handed;
  String dateOfBirth;
  String biography;
  String forMoreLink;

  Cricketgoats({
    required this.id,
    required this.name,
    required this.image,
    required this.country,
    required this.type,
    required this.handed,
    required this.dateOfBirth,
    required this.biography,
    required this.forMoreLink,
  });

  factory Cricketgoats.fromJson(Map<String, dynamic> json) => Cricketgoats(
    id: json["id"],
    name: json["name"],
    image: json["image"],
    country: json["country"],
    type: json["type"],
    handed: json["handed"],
    dateOfBirth: json["date_of_birth"],
    biography: json["biography"],
    forMoreLink: json["for_more_link"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "image": image,
    "country": country,
    "type": type,
    "handed": handed,
    "date_of_birth": dateOfBirth,
    "biography": biography,
    "for_more_link": forMoreLink,
  };
}
