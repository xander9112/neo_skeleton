part of 'settings_cubit.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    required AppInfoModel appInfo,
    required DeviceInfoModel deviceInfo,
    bool? useBiometric,
    @Default(false) bool useLocalAuth,
    @Default(AppVersionEntity(major: 0, minor: 0, patch: 0))
    AppVersionEntity storeVersion,
    @Default(false) bool isLoaded,
    ThemeMode? themeMode,
    Locale? locale,
  }) = _SettingsState;

  const SettingsState._();

  bool get hasUpdate {
    if (storeVersion.major == 0) {
      return false;
    }

    final AppVersionEntity local = appInfo.version;
    final AppVersionEntity store = storeVersion;

    return store.major > local.major ||
        store.minor > local.minor ||
        store.patch > local.patch;
  }

  bool get shouldUpdate {
    if (storeVersion.major == 0) {
      return false;
    }

    final AppVersionEntity local = appInfo.version;
    final AppVersionEntity store = storeVersion;

    return (store.patch > local.patch) || (store.minor > local.minor);
  }

  bool get requireUpdate {
    if (storeVersion.major == 0) {
      return false;
    }

    final AppVersionEntity local = appInfo.version;
    final AppVersionEntity store = storeVersion;

    return (store.minor > local.minor) || store.major > local.major;
  }
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
