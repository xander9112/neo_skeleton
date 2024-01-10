part of 'device_preferences_bloc.dart';

@freezed
class DevicePreferencesEvent with _$DevicePreferencesEvent {
  const factory DevicePreferencesEvent.started() = _Started;

  const factory DevicePreferencesEvent.setLocale(Locale? locale) = _SetLocale;

  const factory DevicePreferencesEvent.setThemeMode(ThemeMode? themeMode) =
      _SetThemeMode;
}
