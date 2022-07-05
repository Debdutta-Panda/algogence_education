// To parse this JSON data, do
//
//     final loginResponse = loginResponseFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

LoginResponse loginResponseFromJson(String str) => LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
  LoginResponse({
    required this.success,
    required this.message,
    required this.userId,
  });

  bool success;
  String message;
  String userId;

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
    success: json["success"],
    message: json["message"],
    userId: json["userId"],
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "message": message,
    "userId": userId,
  };
}
