// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthenticatedUserImpl _$$AuthenticatedUserImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticatedUserImpl(
      id: (json['id'] as num).toInt(),
      email: json['email'] as String,
      login: json['login'] as String,
      lastName: json['last_name'] as String,
      firstName: json['first_name'] as String,
      patronymic: json['patronymic'] as String?,
      birthday: fromJsonDateTime(json['birthday'] as String?),
      createdAt: fromJsonDateTime(json['created_at'] as String?),
      updatedAt: fromJsonDateTime(json['updated_at'] as String?),
    );

Map<String, dynamic> _$$AuthenticatedUserImplToJson(
        _$AuthenticatedUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'login': instance.login,
      'last_name': instance.lastName,
      'first_name': instance.firstName,
      'patronymic': instance.patronymic,
      'birthday': toJsonDateTime(instance.birthday),
      'created_at': toJsonDateTime(instance.createdAt),
      'updated_at': toJsonDateTime(instance.updatedAt),
    };
