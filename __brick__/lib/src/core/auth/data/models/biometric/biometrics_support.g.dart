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
      type: $enumDecodeNullable(_$BiometricItemTypeEnumMap, json['type']),
      useBiometric: json['useBiometric'] as bool?,
    );

Map<String, dynamic> _$$_BiometricSupportModelToJson(
        _$_BiometricSupportModel instance) =>
    <String, dynamic>{
      'status': _$BiometricStatusEnumMap[instance.status]!,
      'type': _$BiometricItemTypeEnumMap[instance.type],
      'useBiometric': instance.useBiometric,
    };

const _$BiometricStatusEnumMap = {
  BiometricStatus.available: 'available',
  BiometricStatus.notAvailable: 'notAvailable',
  BiometricStatus.installed: 'installed',
};

const _$BiometricItemTypeEnumMap = {
  BiometricItemType.face: 'face',
  BiometricItemType.fingerprint: 'fingerprint',
};
