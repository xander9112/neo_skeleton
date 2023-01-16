// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginInitialState _$$_LoginInitialStateFromJson(Map<String, dynamic> json) =>
    _$_LoginInitialState(
      status: $enumDecodeNullable(_$FetchStatusEnumMap, json['status']) ??
          FetchStatus.pure,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$_LoginInitialStateToJson(
        _$_LoginInitialState instance) =>
    <String, dynamic>{
      'status': _$FetchStatusEnumMap[instance.status]!,
      'error': instance.error,
    };

const _$FetchStatusEnumMap = {
  FetchStatus.pure: 'pure',
  FetchStatus.fetchingInProgress: 'fetchingInProgress',
  FetchStatus.fetchingSuccess: 'fetchingSuccess',
  FetchStatus.fetchingFailure: 'fetchingFailure',
};
