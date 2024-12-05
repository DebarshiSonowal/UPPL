import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ConfigStorage {
  // shared_preferences
  ConfigStorage._();

  static final ConfigStorage instance = ConfigStorage._();
  late SharedPreferences sharedpreferences;

  Future<void> initializeStorage() async {
    sharedpreferences = await SharedPreferences.getInstance();
  }

  Future<void> setToken(String accessToken, String refreshToken) async {
    debugPrint('set token $accessToken \n $refreshToken');
    await sharedpreferences.setString("accessToken", accessToken);
    await sharedpreferences.setString("refreshToken", refreshToken);
    await sharedpreferences.setBool("isLoggedIn", true);
  }

  Future<void> setAccessToken(String accessToken) async {
    debugPrint('set token $accessToken');
    await sharedpreferences.setString("accessToken", accessToken);
  }

  get isLoggedIn => sharedpreferences.getBool("isLoggedIn") ?? false;

  get token => sharedpreferences.getString("accessToken") ?? "";

  get refreshToken => sharedpreferences.getString("refreshToken") ?? "";

  // void logout() {}
  Future<void> logout() async {
    await sharedpreferences.clear();
  }
}
