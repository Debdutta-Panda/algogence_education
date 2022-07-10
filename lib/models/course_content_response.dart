// To parse this JSON data, do
//
//     final courseContentResponse = courseContentResponseFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

CourseContentResponse courseContentResponseFromJson(String str) => CourseContentResponse.fromJson(json.decode(str));

String courseContentResponseToJson(CourseContentResponse data) => json.encode(data.toJson());

class CourseContentResponse {
  CourseContentResponse({
    required this.success,
    required this.message,
    required this.content,
  });

  bool success;
  String message;
  String content;

  factory CourseContentResponse.fromJson(Map<String, dynamic> json) => CourseContentResponse(
    success: json["success"],
    message: json["message"],
    content: json["content"],
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "message": message,
    "content": content,
  };
}
