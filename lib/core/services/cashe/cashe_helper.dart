import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:waheed/core/constants/app_constant.dart';

class CasheHelper {
  CasheHelper._internal();
  static final _instance = CasheHelper._internal();
  factory CasheHelper() {
    return _instance;
  }


   Future <void >removeToken() async{
    await _sharedPreferences.remove(AppConstant.accessToken) ;  

   }
   Future <void >removeRefreshToke () async{
    await _sharedPreferences.remove(AppConstant.refreshToken) ;  

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

  Future<void> setOtpCode({required String key, required String value}) async {
    await _sharedPreferences.setString(key, value);
  }

  String getOtpCode({required String key}) {
    return _sharedPreferences.getString(key) ?? '';
  }

  Future <void> savedAccessToken({required String key, required String value}) async {
    await _flutterSecureStorage.write(key: key, value: value);
  }

  Future<String> getAccessToken({required String key}) async {
    return await _flutterSecureStorage.read(key: key) ?? '';
  }

  Future <void> savedRefreshToken({required String key, required String value}) async{
    await _flutterSecureStorage.write(key: key, value: value);
  }

  Future<String> getRefreshToken({required String key}) async {
    return await _flutterSecureStorage.read(key: key) ?? '';
  }

  Future<void> saveUserEmail({
    required String key,
    required String value,
  }) async {
    await _sharedPreferences.setString(key, value);
  }

  String getUserEmail({required String key}) {
    return _sharedPreferences.getString(key) ?? '';
  }

  Future<void> setisAuth({required bool value}) async {
    await _sharedPreferences.setBool('isAuth', value);
  }

  bool getIsAuth() {
    return _sharedPreferences.getBool('isAuth') ?? false;
  }
}
