import 'dart:convert';

List<PostModels> postModelsFromJson(String str) => List<PostModels>.from(json.decode(str).map((x) => PostModels.fromJson(x)));

String postModelsToJson(List<PostModels> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PostModels {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  PostModels({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  factory PostModels.fromJson(Map<String, dynamic> json) => PostModels(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "body": body,
  };
}
