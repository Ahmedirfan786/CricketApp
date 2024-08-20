// To parse this JSON data, do
//
//     final livechannels = livechannelsFromJson(jsonString);

import 'dart:convert';

List<Livechannels> livechannelsFromJson(String str) => List<Livechannels>.from(json.decode(str).map((x) => Livechannels.fromJson(x)));

String livechannelsToJson(List<Livechannels> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Livechannels {
  String id;
  String channelName;
  String channelImage;
  String channelLink;

  Livechannels({
    required this.id,
    required this.channelName,
    required this.channelImage,
    required this.channelLink,
  });

  factory Livechannels.fromJson(Map<String, dynamic> json) => Livechannels(
    id: json["id"],
    channelName: json["channel_name"],
    channelImage: json["channel_image"],
    channelLink: json["channel_link"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "channel_name": channelName,
    "channel_image": channelImage,
    "channel_link": channelLink,
  };
}
