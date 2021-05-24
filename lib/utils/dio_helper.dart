import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:shopbox_task/services/services_constant.dart';

class DioHelper {
  static Dio _dio;

  static init() {
    _dio = Dio(BaseOptions(
      baseUrl: ServicesConstant.baseUrl,
      connectTimeout: 60 * 1000, // 60 seconds
      receiveTimeout: 60 * 1000, // 60 seconds
      headers: {"Content-Type": "application/json"},
    ));
  }

  static Future<Response> getData({
    @required String path,
    Map<String, dynamic> query,
  }) async {
    return await _dio.get(path, queryParameters: query);
  }

  static Future<Response> postData({
    @required String path,
    Map<String, dynamic> data,
  }) async {
    return await _dio.post(path, data: data);
  }
}
