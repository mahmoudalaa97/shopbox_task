// To parse this JSON data, do
//
//     final authModel = authModelFromJson(jsonString);

import 'dart:convert';

import 'package:equatable/equatable.dart';

AuthModel authModelFromJson(String str) => AuthModel.fromJson(json.decode(str));

String authModelToJson(AuthModel data) => json.encode(data.toJson());

class AuthModel extends Equatable {
  AuthModel({
    this.account,
    this.accessToken,
    this.crdate,
    this.tstamp,
    this.crdateFormatted,
    this.tstampFormatted,
  });

  final Account account;
  final String accessToken;
  final int crdate;
  final int tstamp;
  final String crdateFormatted;
  final String tstampFormatted;

  AuthModel copyWith({
    Account account,
    String accessToken,
    int crdate,
    int tstamp,
    String crdateFormatted,
    String tstampFormatted,
  }) =>
      AuthModel(
        account: account ?? this.account,
        accessToken: accessToken ?? this.accessToken,
        crdate: crdate ?? this.crdate,
        tstamp: tstamp ?? this.tstamp,
        crdateFormatted: crdateFormatted ?? this.crdateFormatted,
        tstampFormatted: tstampFormatted ?? this.tstampFormatted,
      );

  factory AuthModel.fromJson(Map<String, dynamic> json) => AuthModel(
        account:
            json["account"] == null ? null : Account.fromJson(json["account"]),
        accessToken: json["accessToken"] == null ? null : json["accessToken"],
        crdate: json["crdate"] == null ? null : json["crdate"],
        tstamp: json["tstamp"] == null ? null : json["tstamp"],
        crdateFormatted:
            json["crdate_formatted"] == null ? null : json["crdate_formatted"],
        tstampFormatted:
            json["tstamp_formatted"] == null ? null : json["tstamp_formatted"],
      );

  Map<String, dynamic> toJson() => {
        "account": account == null ? null : account.toJson(),
        "accessToken": accessToken == null ? null : accessToken,
        "crdate": crdate == null ? null : crdate,
        "tstamp": tstamp == null ? null : tstamp,
        "crdate_formatted": crdateFormatted == null ? null : crdateFormatted,
        "tstamp_formatted": tstampFormatted == null ? null : tstampFormatted,
      };

  @override
  // TODO: implement props
  List<Object> get props => [
        this.account,
        this.accessToken,
        this.crdate,
        this.tstamp,
        this.crdateFormatted,
        this.tstampFormatted,
      ];
}

class Account extends Equatable {
  Account({
    this.uid,
    this.username,
    this.firstName,
    this.middleName,
    this.lastName,
    this.mobile,
    this.title,
    this.code,
    this.verifiedTime,
    this.lang,
  });

  final int uid;
  final String username;
  final String firstName;
  final String middleName;
  final String lastName;
  final String mobile;
  final String title;
  final String code;
  final int verifiedTime;
  final String lang;

  Account copyWith({
    int uid,
    String username,
    String firstName,
    String middleName,
    String lastName,
    String mobile,
    String title,
    String code,
    int verifiedTime,
    String lang,
  }) =>
      Account(
        uid: uid ?? this.uid,
        username: username ?? this.username,
        firstName: firstName ?? this.firstName,
        middleName: middleName ?? this.middleName,
        lastName: lastName ?? this.lastName,
        mobile: mobile ?? this.mobile,
        title: title ?? this.title,
        code: code ?? this.code,
        verifiedTime: verifiedTime ?? this.verifiedTime,
        lang: lang ?? this.lang,
      );

  factory Account.fromJson(Map<String, dynamic> json) => Account(
        uid: json["uid"] == null ? null : json["uid"],
        username: json["username"] == null ? null : json["username"],
        firstName: json["first_name"] == null ? null : json["first_name"],
        middleName: json["middle_name"] == null ? null : json["middle_name"],
        lastName: json["last_name"] == null ? null : json["last_name"],
        mobile: json["mobile"] == null ? null : json["mobile"],
        title: json["title"] == null ? null : json["title"],
        code: json["code"] == null ? null : json["code"],
        verifiedTime:
            json["verified_time"] == null ? null : json["verified_time"],
        lang: json["lang"] == null ? null : json["lang"],
      );

  Map<String, dynamic> toJson() => {
        "uid": uid == null ? null : uid,
        "username": username == null ? null : username,
        "first_name": firstName == null ? null : firstName,
        "middle_name": middleName == null ? null : middleName,
        "last_name": lastName == null ? null : lastName,
        "mobile": mobile == null ? null : mobile,
        "title": title == null ? null : title,
        "code": code == null ? null : code,
        "verified_time": verifiedTime == null ? null : verifiedTime,
        "lang": lang == null ? null : lang,
      };

  @override
  // TODO: implement props
  List<Object> get props => [
        this.uid,
        this.username,
        this.firstName,
        this.middleName,
        this.lastName,
        this.mobile,
        this.title,
        this.code,
        this.verifiedTime,
        this.lang
      ];
}
