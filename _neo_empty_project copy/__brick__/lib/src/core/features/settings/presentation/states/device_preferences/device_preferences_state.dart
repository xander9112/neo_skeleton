part of 'device_preferences_bloc.dart';

@freezed
class DevicePreferencesState with _$DevicePreferencesState {
  const factory DevicePreferencesState({
    required AppInfoModel appInfo,
    required DeviceInfoModel deviceInfo,
    @Default(false) bool isLoaded,
    ThemeMode? themeMode,
    Locale? locale,
  }) = _Initial;
}
