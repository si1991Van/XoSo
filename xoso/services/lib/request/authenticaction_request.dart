
import 'dart:convert';


class AuthenticationRequest {
  AuthenticationRequest({
    required this.username,
    required this.password,
    required this.deviceId,
    required this.version,
    required this.otpNo,
    required this.tokenId,
    required this.operatingSystem,
    required this.requestId,
    required this.lang,
  });

  final String username;
  final String password;
  final String deviceId;
  final String version;
  final dynamic otpNo;
  final String tokenId;
  final String operatingSystem;
  final String requestId;
  final String lang;

  factory AuthenticationRequest.fromJson(Map<String, dynamic> json) => AuthenticationRequest(
    username: json["username"] == null ? null : json["username"],
    password: json["password"] == null ? null : json["password"],
    deviceId: json["deviceId"] == null ? null : json["deviceId"],
    version: json["version"] == null ? null : json["version"],
    otpNo: json["otpNo"],
    tokenId: json["tokenId"] == null ? null : json["tokenId"],
    operatingSystem: json["operatingSystem"] == null ? null : json["operatingSystem"],
    requestId: json["requestId"] == null ? null : json["requestId"],
    lang: json["lang"] == null ? null : json["lang"],
  );

  Map<String, dynamic> toJson() => {
    "username": username == null ? null : username,
    "password": password == null ? null : password,
    "deviceId": deviceId == null ? null : deviceId,
    "version": version == null ? null : version,
    "otpNo": otpNo,
    "tokenId": tokenId == null ? null : tokenId,
    "operatingSystem": operatingSystem == null ? null : operatingSystem,
    "requestId": requestId == null ? null : requestId,
    "lang": lang == null ? null : lang,
  };
}
