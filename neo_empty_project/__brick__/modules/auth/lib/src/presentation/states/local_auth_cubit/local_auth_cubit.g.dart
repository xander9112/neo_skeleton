// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_auth_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocalAuthInitialStateImpl _$$LocalAuthInitialStateImplFromJson(
        Map<String, dynamic> json) =>
    _$LocalAuthInitialStateImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LocalAuthInitialStateImplToJson(
        _$LocalAuthInitialStateImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$LocalAuthSuccessStateImpl _$$LocalAuthSuccessStateImplFromJson(
        Map<String, dynamic> json) =>
    _$LocalAuthSuccessStateImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LocalAuthSuccessStateImplToJson(
        _$LocalAuthSuccessStateImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$LocalAuthResetPinStateImpl _$$LocalAuthResetPinStateImplFromJson(
        Map<String, dynamic> json) =>
    _$LocalAuthResetPinStateImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LocalAuthResetPinStateImplToJson(
        _$LocalAuthResetPinStateImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$LocalAuthCreatePinImpl _$$LocalAuthCreatePinImplFromJson(
        Map<String, dynamic> json) =>
    _$LocalAuthCreatePinImpl(
      error: json['error'] as String?,
      confirm: json['confirm'] as bool? ?? false,
      length: (json['length'] as num?)?.toInt() ?? 4,
      status: $enumDecodeNullable(_$FetchStatusEnumMap, json['status']) ??
          FetchStatus.pure,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LocalAuthCreatePinImplToJson(
        _$LocalAuthCreatePinImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'confirm': instance.confirm,
      'length': instance.length,
      'status': _$FetchStatusEnumMap[instance.status]!,
      'runtimeType': instance.$type,
    };

const _$FetchStatusEnumMap = {
  FetchStatus.pure: 'pure',
  FetchStatus.firstFetchingInProgress: 'firstFetchingInProgress',
  FetchStatus.fetchingInProgress: 'fetchingInProgress',
  FetchStatus.fetchingSuccess: 'fetchingSuccess',
  FetchStatus.fetchingFailure: 'fetchingFailure',
};

_$LocalAuthEnterPinImpl _$$LocalAuthEnterPinImplFromJson(
        Map<String, dynamic> json) =>
    _$LocalAuthEnterPinImpl(
      biometricSupportModel:
          BiometricSupportModel.fromJson(json['biometricSupportModel']),
      error: json['error'] as String?,
      length: (json['length'] as num?)?.toInt() ?? 4,
      errorCount: (json['errorCount'] as num?)?.toInt() ?? 0,
      status: $enumDecodeNullable(_$FetchStatusEnumMap, json['status']) ??
          FetchStatus.pure,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LocalAuthEnterPinImplToJson(
        _$LocalAuthEnterPinImpl instance) =>
    <String, dynamic>{
      'biometricSupportModel': instance.biometricSupportModel,
      'error': instance.error,
      'length': instance.length,
      'errorCount': instance.errorCount,
      'status': _$FetchStatusEnumMap[instance.status]!,
      'runtimeType': instance.$type,
    };
