import 'dart:convert';

BookmarkModel bookmarkModelFromMap(String str) => BookmarkModel.fromMap(json.decode(str));

String bookmarkModelToMap(BookmarkModel data) => json.encode(data.toMap());

class BookmarkModel {
  BookmarkModel({
    this.id,
    this.imageUrl,
    this.name,
  });

  int id;
  String imageUrl;
  String name;

  factory BookmarkModel.fromMap(Map<String, dynamic> json) => BookmarkModel(
    id: json["id"],
    imageUrl: json["imageUrl"],
    name: json["name"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "imageUrl": imageUrl,
    "name": name,
  };
}
