import 'package:flutter/material.dart';
import 'package:skeleton_core/skeleton_core.dart';

abstract class DevicePreferencesRepository {
  /// Получение информации о приложении
  Future<AppInfoModel> getAppInfo();

  /// Получение информации об устройстве
  Future<DeviceInfoModel> getDeviceInfo();

  /// Получение режиме темы
  Future<ThemeMode> getThemeMode();

  /// Получение локали
  Future<Locale?> getLocale();

  Future<void> setLocale(Locale? locale);

  Future<void> setThemeMode(ThemeMode? themeMode);
}
