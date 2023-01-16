// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['id'] as int,
      login: json['login'] as String,
      lastName: json['last_name'] as String,
      firstName: json['first_name'] as String,
      patronymic: json['patronymic'] as String?,
      birthday: fromJsonDateTime(json['birthday'] as String?),
      createdAt: fromJsonDateTime(json['created_at'] as String?),
      updatedAt: fromJsonDateTime(json['updated_at'] as String?),
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'login': instance.login,
      'last_name': instance.lastName,
      'first_name': instance.firstName,
      'patronymic': instance.patronymic,
      'birthday': toJsonDateTime(instance.birthday),
      'created_at': toJsonDateTime(instance.createdAt),
      'updated_at': toJsonDateTime(instance.updatedAt),
    };
