// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'biometrics_support.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BiometricSupportModel _$$_BiometricSupportModelFromJson(
        Map<String, dynamic> json) =>
    _$_BiometricSupportModel(
      status: $enumDecodeNullable(_$BiometricStatusEnumMap, json['status']) ??
          BiometricStatus.notAvailable,
      type: $enumDecodeNullable(_$BiometricTypeEnumMap, json['type']),
      useBiometric: json['useBiometric'] as bool?,
    );

Map<String, dynamic> _$$_BiometricSupportModelToJson(
        _$_BiometricSupportModel instance) =>
    <String, dynamic>{
      'status': _$BiometricStatusEnumMap[instance.status]!,
      'type': _$BiometricTypeEnumMap[instance.type],
      'useBiometric': instance.useBiometric,
    };

const _$BiometricStatusEnumMap = {
  BiometricStatus.avalable: 'avalable',
  BiometricStatus.notAvailable: 'notAvailable',
  BiometricStatus.installed: 'installed',
};

const _$BiometricTypeEnumMap = {
  BiometricType.face: 'face',
  BiometricType.fingerprint: 'fingerprint',
};
