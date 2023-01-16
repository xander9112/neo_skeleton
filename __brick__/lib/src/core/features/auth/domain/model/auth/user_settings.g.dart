// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserSettingsModel _$$_UserSettingsModelFromJson(Map<String, dynamic> json) =>
    _$_UserSettingsModel(
      news: json['news'] as bool? ?? false,
      board: json['board'] as bool? ?? false,
      birthday: json['birthday'] as bool? ?? false,
    );

Map<String, dynamic> _$$_UserSettingsModelToJson(
        _$_UserSettingsModel instance) =>
    <String, dynamic>{
      'news': instance.news,
      'board': instance.board,
      'birthday': instance.birthday,
    };
