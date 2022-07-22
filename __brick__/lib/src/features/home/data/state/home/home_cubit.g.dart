// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Initial _$$_InitialFromJson(Map<String, dynamic> json) => _$_Initial(
      status: $enumDecodeNullable(_$FetchStatusEnumMap, json['status']) ??
          FetchStatus.pure,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$_InitialToJson(_$_Initial instance) =>
    <String, dynamic>{
      'status': _$FetchStatusEnumMap[instance.status],
      'error': instance.error,
    };

const _$FetchStatusEnumMap = {
  FetchStatus.pure: 'pure',
  FetchStatus.fetchingInProgress: 'fetchingInProgress',
  FetchStatus.fetchingSuccess: 'fetchingSuccess',
  FetchStatus.fetchingFailure: 'fetchingFailure',
};
