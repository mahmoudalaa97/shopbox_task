import 'dart:convert';

import 'package:equatable/equatable.dart';

ErrorModel errorAuthModelFromJson(String str) =>
    ErrorModel.fromJson(json.decode(str));

String errorAuthModelToJson(ErrorModel data) => json.encode(data.toJson());

class ErrorModel extends Equatable {
  ErrorModel({
    this.error,
  });

  final Error error;

  ErrorModel copyWith({
    Error error,
  }) =>
      ErrorModel(
        error: error ?? this.error,
      );

  factory ErrorModel.fromJson(Map<String, dynamic> json) => ErrorModel(
        error: json["error"] == null ? null : Error.fromJson(json["error"]),
      );

  Map<String, dynamic> toJson() => {
        "error": error == null ? null : error.toJson(),
      };

  @override
  // TODO: implement props
  List<Object> get props => [
        this.error,
      ];
}

class Error extends Equatable {
  Error({
    this.name,
    this.code,
    this.type,
    this.status,
    this.data,
    this.message,
  });

  final String name;
  final int code;
  final String type;
  final int status;
  final List<DataMessage> data;
  final String message;

  Error copyWith({
    String name,
    int code,
    String type,
    int status,
    List<DataMessage> data,
    String message,
  }) =>
      Error(
        name: name ?? this.name,
        code: code ?? this.code,
        type: type ?? this.type,
        status: status ?? this.status,
        data: data ?? this.data,
        message: message ?? this.message,
      );

  factory Error.fromJson(Map<String, dynamic> json) => Error(
        name: json["name"] == null ? null : json["name"],
        code: json["code"] == null ? null : json["code"],
        type: json["type"] == null ? null : json["type"],
        status: json["status"] == null ? null : json["status"],
        data: json["data"] == null
            ? null
            : List<DataMessage>.from(
                json["data"].map((x) => DataMessage.fromJson(x))),
        message: json["message"] == null ? null : json["message"],
      );

  Map<String, dynamic> toJson() => {
        "name": name == null ? null : name,
        "code": code == null ? null : code,
        "type": type == null ? null : type,
        "status": status == null ? null : status,
        "data": data == null
            ? null
            : List<dynamic>.from(data.map((x) => x.toJson())),
        "message": message == null ? null : message,
      };

  @override
  // TODO: implement props
  List<Object> get props => [
        this.name,
        this.code,
        this.type,
        this.status,
        this.data,
        this.message,
      ];
}

class DataMessage extends Equatable {
  DataMessage({
    this.message,
    this.fieldName,
    this.parent,
    this.index,
  });

  final String message;
  final String fieldName;
  final dynamic parent;
  final dynamic index;

  DataMessage copyWith({
    String message,
    String fieldName,
    dynamic parent,
    dynamic index,
  }) =>
      DataMessage(
        message: message ?? this.message,
        fieldName: fieldName ?? this.fieldName,
        parent: parent ?? this.parent,
        index: index ?? this.index,
      );

  factory DataMessage.fromJson(Map<String, dynamic> json) => DataMessage(
        message: json["message"] == null ? null : json["message"],
        fieldName: json["fieldName"] == null ? null : json["fieldName"],
        parent: json["parent"],
        index: json["index"],
      );

  Map<String, dynamic> toJson() => {
        "message": message == null ? null : message,
        "fieldName": fieldName == null ? null : fieldName,
        "parent": parent,
        "index": index,
      };

  @override
  // TODO: implement props
  List<Object> get props => [
        this.message,
        this.fieldName,
        this.parent,
        this.index,
      ];
}
