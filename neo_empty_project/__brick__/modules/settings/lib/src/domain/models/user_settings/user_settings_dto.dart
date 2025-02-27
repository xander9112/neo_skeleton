import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:intl/locale.dart' as intl;

part 'user_settings_dto.freezed.dart';
part 'user_settings_dto.g.dart';

@freezed
abstract class UserSettingsDTO with _$UserSettingsDTO {
  const factory UserSettingsDTO({
    @JsonKey(
      fromJson: localeFromJson,
      toJson: localeToJson,
    )
    required Locale locale,
    @JsonKey(
      fromJson: themeModeFromJson,
      toJson: themeModeToJson,
    )
    required ThemeMode themeMode,
    @Default(true) bool useLocalAuth,
  }) = _UserSettingsDTO;

  factory UserSettingsDTO.fromJson(Object? json) =>
      _$UserSettingsDTOFromJson(json! as Map<String, dynamic>);

  const UserSettingsDTO._();

  @override
  Map<String, dynamic> toJson();
}

Locale localeFromJson(String value) {
  final intlLocale = intl.Locale.tryParse(value);

  if (intlLocale == null) {
    return const Locale('en');
  }

  return Locale.fromSubtags(
    languageCode: intlLocale.languageCode,
    countryCode: intlLocale.countryCode,
    scriptCode: intlLocale.scriptCode,
  );
}

String? localeToJson(Locale? locale) {
  if (locale == null) return null;

  final localName = locale.countryCode == null || locale.countryCode!.isEmpty
      ? locale.languageCode
      : locale.toString();

  return Intl.canonicalizedLocale(localName);
}

ThemeMode themeModeFromJson(String value) {
  return switch (value) {
    'system' => ThemeMode.system,
    'dark' => ThemeMode.dark,
    'light' => ThemeMode.light,
    _ => ThemeMode.system,
  };
}

String themeModeToJson(ThemeMode value) {
  return value.name;
}
