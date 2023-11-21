// GENERATED CODE - DO NOT MODIFY BY HAND

part of '{{name.snakeCase()}}_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_${{name.pascalCase()}}InitialStateImpl _$${{name.pascalCase()}}InitialStateImplFromJson(
        Map<String, dynamic> json) =>
    _${{name.pascalCase()}}InitialStateImpl(
      status: $enumDecodeNullable(_$FetchStatusEnumMap, json['status']) ??
          FetchStatus.pure,
      error: json['error'] as String?,
      {{name.camelCase()}}: json['{{name.camelCase()}}'] == null
          ? null
          : {{name.pascalCase()}}Model.fromJson(json['{{name.camelCase()}}']),
    );

Map<String, dynamic> _$${{name.pascalCase()}}InitialStateImplToJson(
        _${{name.pascalCase()}}InitialStateImpl instance) =>
    <String, dynamic>{
      'status': _$FetchStatusEnumMap[instance.status]!,
      'error': instance.error,
      '{{name.camelCase()}}': instance.{{name.camelCase()}},
    };

const _$FetchStatusEnumMap = {
  FetchStatus.pure: 'pure',
  FetchStatus.fetchingInProgress: 'fetchingInProgress',
  FetchStatus.fetchingSuccess: 'fetchingSuccess',
  FetchStatus.fetchingFailure: 'fetchingFailure',
};
