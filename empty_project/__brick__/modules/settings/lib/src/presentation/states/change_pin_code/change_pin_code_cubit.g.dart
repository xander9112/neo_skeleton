// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_pin_code_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChangePinCodeInitialImpl _$$ChangePinCodeInitialImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangePinCodeInitialImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ChangePinCodeInitialImplToJson(
        _$ChangePinCodeInitialImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$ChangePinCodeSuccessImpl _$$ChangePinCodeSuccessImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangePinCodeSuccessImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ChangePinCodeSuccessImplToJson(
        _$ChangePinCodeSuccessImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$ChangePinCodeEnterPinImpl _$$ChangePinCodeEnterPinImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangePinCodeEnterPinImpl(
      error: json['error'] as String?,
      length: (json['length'] as num?)?.toInt() ?? 4,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ChangePinCodeEnterPinImplToJson(
        _$ChangePinCodeEnterPinImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'length': instance.length,
      'runtimeType': instance.$type,
    };

_$ChangePinCodeCreatePinImpl _$$ChangePinCodeCreatePinImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangePinCodeCreatePinImpl(
      error: json['error'] as String?,
      confirm: json['confirm'] as bool? ?? false,
      length: (json['length'] as num?)?.toInt() ?? 4,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ChangePinCodeCreatePinImplToJson(
        _$ChangePinCodeCreatePinImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'confirm': instance.confirm,
      'length': instance.length,
      'runtimeType': instance.$type,
    };
