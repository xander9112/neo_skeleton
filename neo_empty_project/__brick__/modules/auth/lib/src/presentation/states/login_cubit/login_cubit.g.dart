// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginInitialStateImpl _$$LoginInitialStateImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginInitialStateImpl(
      status: $enumDecodeNullable(_$FetchStatusEnumMap, json['status']) ??
          FetchStatus.pure,
      stateStatus:
          $enumDecodeNullable(_$StateStatusEnumMap, json['stateStatus']) ??
              StateStatus.notReady,
      error: json['error'] as String?,
      blockTime: json['blockTime'] == null
          ? Duration.zero
          : Duration(microseconds: (json['blockTime'] as num).toInt()),
    );

Map<String, dynamic> _$$LoginInitialStateImplToJson(
        _$LoginInitialStateImpl instance) =>
    <String, dynamic>{
      'status': _$FetchStatusEnumMap[instance.status]!,
      'stateStatus': _$StateStatusEnumMap[instance.stateStatus]!,
      'error': instance.error,
      'blockTime': instance.blockTime.inMicroseconds,
    };

const _$FetchStatusEnumMap = {
  FetchStatus.pure: 'pure',
  FetchStatus.firstFetchingInProgress: 'firstFetchingInProgress',
  FetchStatus.fetchingInProgress: 'fetchingInProgress',
  FetchStatus.fetchingSuccess: 'fetchingSuccess',
  FetchStatus.fetchingFailure: 'fetchingFailure',
};

const _$StateStatusEnumMap = {
  StateStatus.notReady: 'notReady',
  StateStatus.ready: 'ready',
  StateStatus.finish: 'finish',
};
