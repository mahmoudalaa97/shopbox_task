import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:shopbox_task/services/repositories/repositories.dart';
import 'package:shopbox_task/services/services_constant.dart';
import 'package:shopbox_task/utils/dio_helper.dart';

class ApiClient extends Repositories {
  @override
  Future<Response> fetchAllClientForAccount({@required String token}) {
    return DioHelper.getData(
        path: ServicesConstant.getClientDataApi, query: {"accessToken": token});
  }

  @override
  Future<Response> fetchAllProductForClient({String token, int clientID}) {
    // TODO: implement fetchAllProductForClient
    return DioHelper.getData(
        path: ServicesConstant.getProductDataApi,
        query: {"accessToken": token, "client": clientID});
  }
}
