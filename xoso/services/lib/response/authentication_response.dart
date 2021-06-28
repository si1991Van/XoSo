
import 'dart:convert';

class UserResponse {
  UserResponse({
    required this.userId,
    required this.fullName,
    required this.token,
    required this.responseCode,
    required this.message,
    required this.lastLoginTime,
    required this.serialNo,
    required this.rulePass,
    required this.ruleMessage,
    required this.versionAppMobile,
    required this.securityType,
    required this.isNoti,
    required this.isFingerLogin,
    required this.corpId,
    required this.tin,
    required this.email,
    required this.tel,
    required this.addr,
    required this.fax,
    required this.roleId,
    required this.nick,
    required this.mobile,
    required this.gender,
    required this.avatar,
    required this.isFingerOtp,
  });

  final String userId;
  final dynamic fullName;
  final String token;
  final String responseCode;
  final String message;
  final String lastLoginTime;
  final String serialNo;
  final String rulePass;
  final String ruleMessage;
  final String versionAppMobile;
  final String securityType;
  String isNoti;
  String isFingerLogin;
  final String corpId;
  final String tin;
  final String email;
  final String tel;
  final String addr;
  final dynamic fax;
  final int roleId;
  final String nick;
  final String mobile;
  final String gender;
  final String avatar;
  final dynamic isFingerOtp;

  factory UserResponse.fromJson(Map<String, dynamic> json) => UserResponse(
    userId: json["userId"] == null ? null : json["userId"],
    fullName: json["fullName"],
    token: json["token"] == null ? null : json["token"],
    responseCode: json["responseCode"] == null ? null : json["responseCode"],
    message: json["message"] == null ? null : json["message"],
    lastLoginTime: json["lastLoginTime"] == null ? null : json["lastLoginTime"],
    serialNo: json["serialNo"] == null ? null : json["serialNo"],
    rulePass: json["rulePass"] == null ? null : json["rulePass"],
    ruleMessage: json["ruleMessage"] == null ? null : json["ruleMessage"],
    versionAppMobile: json["versionAppMobile"] == null ? null : json["versionAppMobile"],
    securityType: json["securityType"] == null ? null : json["securityType"],
    isNoti: json["is_Noti"] == null ? null : json["is_Noti"],
    isFingerLogin: json["isFingerLogin"] == null ? null : json["isFingerLogin"],
    corpId: json["corpId"] == null ? null : json["corpId"],
    tin: json["tin"] == null ? null : json["tin"],
    email: json["email"] == null ? null : json["email"],
    tel: json["tel"] == null ? null : json["tel"],
    addr: json["addr"] == null ? null : json["addr"],
    fax: json["fax"],
    roleId: json["roleId"] == null ? null : json["roleId"],
    nick: json["nick"] == null ? null : json["nick"],
    mobile: json["mobile"] == null ? null : json["mobile"],
    gender: json["gender"] == null ? null : json["gender"],
    avatar: json["avatar"] == null ? null : json["avatar"],
    isFingerOtp: json["isFingerOtp"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId == null ? null : userId,
    "fullName": fullName,
    "token": token == null ? null : token,
    "responseCode": responseCode == null ? null : responseCode,
    "message": message == null ? null : message,
    "lastLoginTime": lastLoginTime == null ? null : lastLoginTime,
    "serialNo": serialNo == null ? null : serialNo,
    "rulePass": rulePass == null ? null : rulePass,
    "ruleMessage": ruleMessage == null ? null : ruleMessage,
    "versionAppMobile": versionAppMobile == null ? null : versionAppMobile,
    "securityType": securityType == null ? null : securityType,
    "is_Noti": isNoti == null ? null : isNoti,
    "isFingerLogin": isFingerLogin == null ? null : isFingerLogin,
    "corpId": corpId == null ? null : corpId,
    "tin": tin == null ? null : tin,
    "email": email == null ? null : email,
    "tel": tel == null ? null : tel,
    "addr": addr == null ? null : addr,
    "fax": fax,
    "roleId": roleId == null ? null : roleId,
    "nick": nick == null ? null : nick,
    "mobile": mobile == null ? null : mobile,
    "gender": gender == null ? null : gender,
    "avatar": avatar == null ? null : avatar,
    "isFingerOtp": isFingerOtp,
  };
}
