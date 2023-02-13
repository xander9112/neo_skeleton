// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileInitialState _$$_ProfileInitialStateFromJson(
        Map<String, dynamic> json) =>
    _$_ProfileInitialState(
      status: json['status'] ?? FetchStatus.pure,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$_ProfileInitialStateToJson(
        _$_ProfileInitialState instance) =>
    <String, dynamic>{
      'status': instance.status,
      'error': instance.error,
    };
