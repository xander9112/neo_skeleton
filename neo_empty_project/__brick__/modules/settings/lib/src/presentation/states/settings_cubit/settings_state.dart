part of 'settings_cubit.dart';

@freezed
abstract class SettingsState with _$SettingsState {
  const factory SettingsState({
    required AppInfoModel appInfo,
    required DeviceInfoModel deviceInfo,
    required AuthSettings authSettings,
    String? error,
    @Default(FetchStatus.pure) FetchStatus status,
    bool? useBiometric,
    @Default(false) bool useLocalAuth,
    @Default(AppVersionEntity(major: 0, minor: 0, patch: 0))
    AppVersionEntity storeVersion,
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

    return store.major > local.major || store.minor > local.minor;
  }
}
