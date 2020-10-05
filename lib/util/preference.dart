import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  String asset_directory = "asset_directory";

  clearAll() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.clear();
  }

  saveLogin(String key, value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key, json.encode(value));
  }

  readLogin(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return json.decode(prefs.getString(key));
  }

  saveString(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

  getString(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }
}