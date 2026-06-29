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

  void savedAccessToken({required String key, required String value}) {
    _flutterSecureStorage.write(key: key, value: value);
  }

  Future<String> getAccessToken({required String key}) async {
    return await _flutterSecureStorage.read(key: key) ?? '';
  }

  void savedRefreshToken({required String key, required String value}) {
    _flutterSecureStorage.write(key: key, value: value);
  }

  Future<String> getRefreshToken({required String key}) async {
    return await _flutterSecureStorage.read(key: key) ?? '';
  }
}
