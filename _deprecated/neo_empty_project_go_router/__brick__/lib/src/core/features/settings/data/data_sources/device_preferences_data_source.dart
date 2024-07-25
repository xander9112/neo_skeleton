import 'package:flutter/material.dart';

abstract class DevicePreferencesDataSource {
  Future<void> setLocale(Locale? locale);

  Future<void> setThemeMode(ThemeMode? themeMode);

  Future<Locale?> getLocale();

  Future<ThemeMode> getThemeMode();
}
