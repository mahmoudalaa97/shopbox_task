import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

abstract class Repositories {
  Future<Response> fetchAllClientForAccount({@required String token});

  Future<Response> fetchAllProductForClient(
      {@required String token, @required int clientID});
}
