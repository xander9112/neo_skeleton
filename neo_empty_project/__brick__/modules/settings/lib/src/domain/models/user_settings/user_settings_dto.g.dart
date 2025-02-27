// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_settings_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserSettingsDTOImpl _$$UserSettingsDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$UserSettingsDTOImpl(
      locale: localeFromJson(json['locale'] as String),
      themeMode: themeModeFromJson(json['themeMode'] as String),
      useLocalAuth: json['useLocalAuth'] as bool? ?? true,
    );

Map<String, dynamic> _$$UserSettingsDTOImplToJson(
        _$UserSettingsDTOImpl instance) =>
    <String, dynamic>{
      'locale': localeToJson(instance.locale),
      'themeMode': themeModeToJson(instance.themeMode),
      'useLocalAuth': instance.useLocalAuth,
    };
