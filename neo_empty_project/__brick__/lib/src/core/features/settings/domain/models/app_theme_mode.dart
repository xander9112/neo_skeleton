import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/locale.dart' as intl;
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

enum AppThemeMode {
  light,
  dark;

  ThemeMode getThemeMode() {
    switch (this) {
      case AppThemeMode.light:
        return ThemeMode.light;
      case AppThemeMode.dark:
        return ThemeMode.dark;
    }
  }

  String getLocalizedString() {
    switch (this) {
      case AppThemeMode.light:
        return SettingsI18n.lightTheme;
      case AppThemeMode.dark:
        return SettingsI18n.darkTheme;
    }
  }

  static const _light = 'light';

  static const _dark = 'dark';

  static AppThemeMode? fromJson(String? value) {
    if (value == null) {
      return null;
    }
    switch (value.toLowerCase()) {
      case _light:
        return AppThemeMode.light;
      case _dark:
        return AppThemeMode.dark;
      default:
        return AppThemeMode.light;
    }
  }

  static String? toJson(AppThemeMode? mode) {
    if (mode == null) return null;
    switch (mode) {
      case AppThemeMode.light:
        return _light;
      case AppThemeMode.dark:
        return _dark;
    }
  }

  static Locale? localeFromJson(String? value) {
    if (value == null) {
      return null;
    }
    final intlLocale = intl.Locale.tryParse(value);

    if (intlLocale == null) return null;

    return Locale.fromSubtags(
      languageCode: intlLocale.languageCode,
      countryCode: intlLocale.countryCode,
      scriptCode: intlLocale.scriptCode,
    );
  }

  static String? localeToJson(Locale? locale) {
    if (locale == null) return null;

    final localName = locale.countryCode == null || locale.countryCode!.isEmpty
        ? locale.languageCode
        : locale.toString();

    return Intl.canonicalizedLocale(localName);
  }
}
