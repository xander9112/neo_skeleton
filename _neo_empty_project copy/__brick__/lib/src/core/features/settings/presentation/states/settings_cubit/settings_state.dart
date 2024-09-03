part of 'settings_cubit.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.current({
    bool? useBiometric,
    @Default(false) bool useLocalAuth,
    @Default(AppVersionEntity(major: 0, minor: 0, patch: 0))
    AppVersionEntity storeVersion,
  }) = _SettingsState;

  const SettingsState._();
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
