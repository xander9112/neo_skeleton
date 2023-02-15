// GENERATED CODE - DO NOT MODIFY BY HAND

part of '{{name.snakeCase()}}_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_{{name.pascalCase()}}InitialState _$$_{{name.pascalCase()}}InitialStateFromJson(
        Map<String, dynamic> json) =>
    _$_{{name.pascalCase()}}InitialState(
      status: $enumDecodeNullable(_$FetchStatusEnumMap, json['status']) ??
          FetchStatus.pure,
      error: json['error'] as String?,
      profile: json['profile'] == null
          ? null
          : {{name.pascalCase()}}Model.fromJson(json['profile'] as Object),
    );

Map<String, dynamic> _$$_{{name.pascalCase()}}InitialStateToJson(
        _$_{{name.pascalCase()}}InitialState instance) =>
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
