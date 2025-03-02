import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:settings/src/_src.dart';

@Injectable(as: SettingsRepository)
class SettingsRepositoryImpl implements SettingsRepository {
  SettingsRepositoryImpl({
    required SharedStorage sharedStorage,
  }) : _sharedStorage = sharedStorage;

  final SharedStorage _sharedStorage;

  final String _localeKey = 'locale_key';
  final String _themeModeKey = 'theme_mode_key';

  @override
  Future<Either<Failure, UserSettingsDTO>> getUserSettings() async {
    try {
      return Right(
        UserSettingsDTO(
          locale: _getLocale(),
          themeMode: _getThemeMode(),
        ),
      );
    } catch (error) {
      return Left(SettingsFailure(code: -1, message: error.toString()));
    }
  }

  @override
  Future<Either<Failure, AppVersionEntity>> getStoreVersion() async {
    try {
      return const Right(
        AppVersionEntity(major: 1, minor: 0, patch: 0),
      );
    } catch (error) {
      return Left(SettingsFailure(code: -1, message: error.toString()));
    }
  }

  @override
  Future<void> setLocale(Locale? locale) async {
    return _sharedStorage.setString(
      _localeKey,
      locale?.toLanguageTag() ?? _getLocale().toLanguageTag(),
    );
  }

  @override
  Future<void> setThemeMode(ThemeMode? themeMode) async {
    return _sharedStorage.setString(
      _themeModeKey,
      themeMode?.name ?? _getThemeMode().name,
    );
  }

  @override
  Future<AppInfoModel> getAppInfo() async {
    return AppInfo.getAppInfo();
  }

  @override
  Future<DeviceInfoModel> getDeviceInfo() async {
    return AppInfo.getDeviceInfo();
  }

  Locale _getLocale() {
    final _localeStr = _sharedStorage.getString(_localeKey);

    return _localeStr != null ? Locale(_localeStr) : const Locale('en');
  }

  ThemeMode _getThemeMode() {
    final _themeModeStr = _sharedStorage.getString(_themeModeKey);

    if (_themeModeStr == null) {
      return ThemeMode.system;
    }

    return switch (_themeModeStr) {
      'system' => ThemeMode.system,
      'dark' => ThemeMode.dark,
      'light' => ThemeMode.light,
      _ => ThemeMode.system,
    };
  }
}
