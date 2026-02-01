import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  Future<Map<String, Object?>?> load(String key) async {
    final prefs = await SharedPreferences.getInstance();
    final rawJson = prefs.getString(key);
    if (rawJson == null) {
      return null;
    }
    return jsonDecode(rawJson);
  }

  Future<void> save(String key, Map<String, Object?> json) async {
    final rawJson = jsonEncode(json);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, rawJson);
  }
}
