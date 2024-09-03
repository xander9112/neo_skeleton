import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class SharedDevicePreferencesDataSource implements DevicePreferencesDataSource {
  @override
  Future<Locale?> getLocale() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();

    final String? locale = preferences.getString('_locale');

    if (locale != null) {
      return Locale.fromSubtags(
        languageCode: locale.split('_').first,
        countryCode: locale.split('_').last,
      );
    }

    return null;
  }

  @override
  Future<ThemeMode> getThemeMode() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();

    final String? themeMode = preferences.getString('_themeMode');

    switch (themeMode) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      case 'system':
        return ThemeMode.system;
    }

    return ThemeMode.system;
  }

  @override
  Future<void> setLocale(Locale? locale) async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();

    if (locale == null) {
      await preferences.remove('_locale');
    } else {
      await preferences.setString('_locale', locale.toString());
    }
  }

  @override
  Future<void> setThemeMode(ThemeMode? themeMode) async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();

    if (themeMode == null) {
      await preferences.remove('_themeMode');
    } else {
      await preferences.setString('_themeMode', themeMode.name);
    }
  }
}
