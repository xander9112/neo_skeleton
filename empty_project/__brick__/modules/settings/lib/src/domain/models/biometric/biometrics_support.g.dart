// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'biometrics_support.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BiometricSupportModelImpl _$$BiometricSupportModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BiometricSupportModelImpl(
      status: $enumDecodeNullable(_$BiometricStatusEnumMap, json['status']) ??
          BiometricStatus.notAvailable,
      type: $enumDecodeNullable(_$BiometricTypeModelEnumMap, json['type']),
      useBiometric: json['useBiometric'] as bool?,
    );

Map<String, dynamic> _$$BiometricSupportModelImplToJson(
        _$BiometricSupportModelImpl instance) =>
    <String, dynamic>{
      'status': _$BiometricStatusEnumMap[instance.status]!,
      'type': _$BiometricTypeModelEnumMap[instance.type],
      'useBiometric': instance.useBiometric,
    };

const _$BiometricStatusEnumMap = {
  BiometricStatus.available: 'available',
  BiometricStatus.notAvailable: 'notAvailable',
  BiometricStatus.installed: 'installed',
};

const _$BiometricTypeModelEnumMap = {
  BiometricTypeModel.face: 'face',
  BiometricTypeModel.fingerprint: 'fingerprint',
  BiometricTypeModel.iris: 'iris',
  BiometricTypeModel.strong: 'strong',
  BiometricTypeModel.weak: 'weak',
};
