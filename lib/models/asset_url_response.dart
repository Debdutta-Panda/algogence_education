import 'dart:convert';

AssetUrlResponse assetUrlResponseFromJson(String str) => AssetUrlResponse.fromJson(json.decode(str));

String assetUrlResponseToJson(AssetUrlResponse data) => json.encode(data.toJson());

class AssetUrlResponse {
  AssetUrlResponse({
    required this.success,
    required this.message,
    required this.url,
  });

  bool success;
  String message;
  String url;

  factory AssetUrlResponse.fromJson(Map<String, dynamic> json) => AssetUrlResponse(
    success: json["success"],
    message: json["message"],
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "message": message,
    "url": url,
  };
}