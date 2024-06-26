import 'dart:async';
import 'dart:convert';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@singleton

class Cache {

  Cache ();

  late SharedPreferences _preferences;

  @postConstruct
  Future<void> init() async {
     _preferences = await SharedPreferences.getInstance();
  }

  Future<bool> containsKey(String key) async {
    return _preferences.containsKey(key);
  }

  Future<T?> getValue<T>(String key) async {
    return _preferences.get(key) as T?;
  }

  Future<String?> getString(String key) async {
    return _preferences.getString(key);
  }

  Future<void> setValue<T>(String key, T value) async {  

    if (value is String) {
      await _preferences.setString(key, value);
    } else if (value is int) {
      await _preferences.setInt(key, value);
    } else if (value is double) {
      await _preferences.setDouble(key, value);
    } else if (value is bool) {
      await _preferences.setBool(key, value);
    } else if (value is List<String>) {
      await _preferences.setStringList(key, value);
    } else {    
      final jsonValue = jsonEncode(value);
      await _preferences.setString(key, jsonValue);
    }
  }

  Future<void> removeKey(String key) async {
    await _preferences.remove(key);
  }

  Future<void> clearCache() async {
    await _preferences.clear();
  }
}
