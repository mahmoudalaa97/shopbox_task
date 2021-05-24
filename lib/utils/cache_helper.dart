import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static SharedPreferences _sharedPreferences;

  static init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> insertData({
    @required String key,
    @required dynamic data,
  }) async {
    switch (data.runtimeType) {
      case int:
        return await _sharedPreferences.setInt(key, data);
      case double:
        return await _sharedPreferences.setDouble(key, data);
      case String:
        return await _sharedPreferences.setString(key, data);
      case bool:
        return await _sharedPreferences.setBool(key, data);
      default:
        throw ('Error Datatype not Define');
    }
  }

  static dynamic getData({@required String key}) {
    return _sharedPreferences.get(key);
  }

  static Future<bool> removeData({@required String key}) async {
    return await _sharedPreferences.remove(key);
  }
}
