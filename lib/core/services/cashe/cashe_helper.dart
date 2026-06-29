import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CasheHelper {
  CasheHelper._internal();
  static final _instance = CasheHelper._internal();
  factory CasheHelper() {
    return _instance;
  }

  late SharedPreferences _sharedPreferences;
  late FlutterSecureStorage _flutterSecureStorage;

  Future<void> initCashe() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    _flutterSecureStorage = FlutterSecureStorage();
  }

  Future<void> setIsFirst({required String key, required bool value}) async {
    await _sharedPreferences.setBool(key, value);
  }

  bool getIsFirst({required String key}) {
    return _sharedPreferences.getBool(key) ?? true;
  }
}
