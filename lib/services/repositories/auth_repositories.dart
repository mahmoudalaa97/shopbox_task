import 'package:dio/dio.dart';

abstract class AuthRepositories {
  Future<Response> login(String email, String password);
}
