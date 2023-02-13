// GENERATED CODE - DO NOT MODIFY BY HAND

part of '{{name.snakeCase()}}_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileInitialState _$$_ProfileInitialStateFromJson(
        Map<String, dynamic> json) =>
    _$_ProfileInitialState(
      status: $enumDecodeNullable(_$FetchStatusEnumMap, json['status']) ??
          FetchStatus.pure,
      error: json['error'] as String?,
      profile: json['profile'] == null
          ? null
          : ProfileModel.fromJson(json['profile'] as Object),
    );

Map<String, dynamic> _$$_ProfileInitialStateToJson(
        _$_ProfileInitialState instance) =>
    <String, dynamic>{
      'status': _$FetchStatusEnumMap[instance.status]!,
      'error': instance.error,
      'profile': instance.profile,
    };

const _$FetchStatusEnumMap = {
  FetchStatus.pure: 'pure',
  FetchStatus.fetchingInProgress: 'fetchingInProgress',
  FetchStatus.fetchingSuccess: 'fetchingSuccess',
  FetchStatus.fetchingFailure: 'fetchingFailure',
};
