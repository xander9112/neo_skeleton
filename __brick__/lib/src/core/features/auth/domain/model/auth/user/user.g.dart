// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['id'] as int,
      email: json['email'] as String,
      ldapId: json['ldap_id'] as String,
      login: json['login'] as String,
      lastName: json['last_name'] as String,
      firstName: json['first_name'] as String,
      patronymic: json['patronymic'] as String?,
      type: json['type'] as String? ?? 'user',
      manager: json['manager'] as String?,
      grade: json['grade'] as String?,
      department: json['department'] as String?,
      vacationDays: json['vacation_days'] as int? ?? 0,
      absenceStatus:
          $enumDecodeNullable(_$AbsenceStatusEnumMap, json['absence_status']) ??
              AbsenceStatus.atWork,
      city: json['city'] as String?,
      officeName: json['office_name'] as String?,
      cityId: json['city_id'] as int?,
      departmentId: json['department_id'] as int?,
      firebaseId: json['firebase_id'] as String?,
      birthday: fromJsonDateTime(json['birthday'] as String?),
      ipPhone: json['ip_phone'] as String?,
      startWork: fromJsonDateTime(json['start_work'] as String?),
      branch: json['branch'] as String?,
      team: json['team'] as String?,
      lastVisit: fromJsonDateTime(json['last_visit'] as String?),
      deviceModel: json['device_model'] as String?,
      deviceSystem: json['device_system'] as String?,
      deviceVersion: json['device_version'] as String?,
      appVersion: json['app_version'] as String?,
      appBuild: json['app_build'] as String?,
      createdAt: fromJsonDateTime(json['created_at'] as String?),
      updatedAt: fromJsonDateTime(json['updated_at'] as String?),
      images: json['images'] as Map<String, dynamic>?,
      contacts: (json['contacts'] as List<dynamic>?)
              ?.map((e) => ContactModel.fromJson(e as Object))
              .toList() ??
          const <ContactModel>[],
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'ldap_id': instance.ldapId,
      'login': instance.login,
      'last_name': instance.lastName,
      'first_name': instance.firstName,
      'patronymic': instance.patronymic,
      'type': instance.type,
      'manager': instance.manager,
      'grade': instance.grade,
      'department': instance.department,
      'vacation_days': instance.vacationDays,
      'absence_status': _$AbsenceStatusEnumMap[instance.absenceStatus]!,
      'city': instance.city,
      'office_name': instance.officeName,
      'city_id': instance.cityId,
      'department_id': instance.departmentId,
      'firebase_id': instance.firebaseId,
      'birthday': toJsonDateTime(instance.birthday),
      'ip_phone': instance.ipPhone,
      'start_work': toJsonDateTime(instance.startWork),
      'branch': instance.branch,
      'team': instance.team,
      'last_visit': toJsonDateTime(instance.lastVisit),
      'device_model': instance.deviceModel,
      'device_system': instance.deviceSystem,
      'device_version': instance.deviceVersion,
      'app_version': instance.appVersion,
      'app_build': instance.appBuild,
      'created_at': toJsonDateTime(instance.createdAt),
      'updated_at': toJsonDateTime(instance.updatedAt),
      'images': instance.images,
      'contacts': instance.contacts,
    };

const _$AbsenceStatusEnumMap = {
  AbsenceStatus.atWork: 'at_work',
  AbsenceStatus.onVacation: 'on_vacation',
  AbsenceStatus.onSickLeave: 'on_sick_leave',
  AbsenceStatus.onSickLeaveWithoutProof: 'on_sick_leave_without_proof',
  AbsenceStatus.decree: 'decree',
};
