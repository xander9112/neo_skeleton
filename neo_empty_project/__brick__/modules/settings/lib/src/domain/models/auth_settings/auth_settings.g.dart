// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthSettingsImpl _$$AuthSettingsImplFromJson(Map<String, dynamic> json) =>
    _$AuthSettingsImpl(
      useBiometric: json['useBiometric'] as bool,
      useLocalAuth: json['useLocalAuth'] as bool,
    );

Map<String, dynamic> _$$AuthSettingsImplToJson(_$AuthSettingsImpl instance) =>
    <String, dynamic>{
      'useBiometric': instance.useBiometric,
      'useLocalAuth': instance.useLocalAuth,
    };
