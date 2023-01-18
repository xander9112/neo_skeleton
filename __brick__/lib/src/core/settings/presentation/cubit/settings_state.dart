// ignore_for_file: invalid_annotation_target

part of 'settings_cubit.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.current({
    @JsonKey(fromJson: AppThemeMode.fromJson, toJson: AppThemeMode.toJson)
        AppThemeMode? appThemeMode,
    @JsonKey(fromJson: AppThemeMode.localeFromJson, toJson: AppThemeMode.localeToJson)
        Locale? locale,
    bool? useBiometric,
    @Default(false) bool useLocalAuth,
  }) = _SettingsState;

  factory SettingsState.fromJson(Object? json) =>
      _$SettingsStateFromJson(json! as Map<String, dynamic>);

  const SettingsState._();

  @override
  Map<String, dynamic> toJson();
}
