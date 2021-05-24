import 'package:dio/src/response.dart';
import 'package:shopbox_task/services/repositories/auth_repositories.dart';
import 'package:shopbox_task/services/services_constant.dart';
import 'package:shopbox_task/utils/dio_helper.dart';

class AuthApiClient extends AuthRepositories {
  AuthApiClient();

  @override
  Future<Response> login(String email, String password) async {
    return await DioHelper.postData(
        path: ServicesConstant.loginApi,
        data: {"username": email, "password": password});
  }
}
