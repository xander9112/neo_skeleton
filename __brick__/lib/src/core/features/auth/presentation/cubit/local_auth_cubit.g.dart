// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_auth_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LocalAuthInitialState _$$_LocalAuthInitialStateFromJson(
        Map<String, dynamic> json) =>
    _$_LocalAuthInitialState(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_LocalAuthInitialStateToJson(
        _$_LocalAuthInitialState instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_LocalAuthSuccessState _$$_LocalAuthSuccessStateFromJson(
        Map<String, dynamic> json) =>
    _$_LocalAuthSuccessState(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_LocalAuthSuccessStateToJson(
        _$_LocalAuthSuccessState instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_LocalAuthCreatePin _$$_LocalAuthCreatePinFromJson(
        Map<String, dynamic> json) =>
    _$_LocalAuthCreatePin(
      error: json['error'] as String?,
      confirm: json['confirm'] as bool? ?? false,
      length: json['length'] as int? ?? 4,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_LocalAuthCreatePinToJson(
        _$_LocalAuthCreatePin instance) =>
    <String, dynamic>{
      'error': instance.error,
      'confirm': instance.confirm,
      'length': instance.length,
      'runtimeType': instance.$type,
    };

_$_LocalAuthEnterPin _$$_LocalAuthEnterPinFromJson(Map<String, dynamic> json) =>
    _$_LocalAuthEnterPin(
      error: json['error'] as String?,
      length: json['length'] as int? ?? 4,
      biometricSupportModel: BiometricSupportModel.fromJson(
          json['biometricSupportModel'] as Object),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_LocalAuthEnterPinToJson(
        _$_LocalAuthEnterPin instance) =>
    <String, dynamic>{
      'error': instance.error,
      'length': instance.length,
      'biometricSupportModel': instance.biometricSupportModel,
      'runtimeType': instance.$type,
    };
