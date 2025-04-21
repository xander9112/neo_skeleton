import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:settings/src/_src.dart';

abstract class SettingsRepository {
  Future<Either<Failure, UserSettingsDTO>> getUserSettings();

  Future<Either<Failure, AppVersionEntity>> getStoreVersion();

  Future<AppInfoModel> getAppInfo();

  Future<DeviceInfoModel> getDeviceInfo();

  Future<void> setLocale(Locale? locale);

  Future<void> setThemeMode(ThemeMode? themeMode);
}
