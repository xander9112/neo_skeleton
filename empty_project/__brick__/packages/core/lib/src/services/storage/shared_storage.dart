import 'package:shared_preferences/shared_preferences.dart';

class SharedStorage {
  static late SharedPreferences _prefs;

  // Инициализация SharedPreferences
  static Future<SharedStorage> init() async {
    _prefs = await SharedPreferences.getInstance();
    return SharedStorage();
  }

  // Сохранение строки
  Future<void> setString(String key, String value) async {
    await _prefs.setString(key, value);
  }

  // Получение строки
  String? getString(String key) {
    return _prefs.getString(key);
  }

  // Сохранение числа
  Future<void> setInt(String key, int value) async {
    await _prefs.setInt(key, value);
  }

  // Получение числа
  int? getInt(String key) {
    return _prefs.getInt(key);
  }

  // Сохранение булевого значения
  Future<void> setBool(String key, bool value) async {
    await _prefs.setBool(key, value);
  }

  // Получение булевого значения
  bool? getBool(String key) {
    return _prefs.getBool(key);
  }

  // Удаление данных
  Future<void> remove(String key) async {
    await _prefs.remove(key);
  }

  // Очистка всех данных
  Future<void> clear() async {
    await _prefs.clear();
  }
}
