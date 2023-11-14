part of 'settings_cubit.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.current({
    required AppInfoModel appInfo,
    required DeviceInfoModel deviceInfo,
    @JsonKey(fromJson: AppThemeMode.fromJson, toJson: AppThemeMode.toJson)
    AppThemeMode? appThemeMode,
    @JsonKey(fromJson: localeFromJson, toJson: localeToJson) Locale? locale,
    bool? useBiometric,
    @Default(false) bool useLocalAuth,
    @Default(AppVersionEntity(major: 0, minor: 0, patch: 0))
    AppVersionEntity storeVersion,
  }) = _SettingsState;

  factory SettingsState.fromJson(Object? json) =>
      _$SettingsStateFromJson(json! as Map<String, dynamic>);

  const SettingsState._();

  @override
  Map<String, dynamic> toJson();
}

Locale? localeFromJson(String? value) {
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

String? localeToJson(Locale? locale) {
  if (locale == null) return null;

  final localName = locale.countryCode == null || locale.countryCode!.isEmpty
      ? locale.languageCode
      : locale.toString();

  return Intl.canonicalizedLocale(localName);
}
