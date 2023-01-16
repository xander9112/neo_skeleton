// ignore_for_file: invalid_annotation_target

import 'dart:math';

import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'user.freezed.dart';
part 'user.g.dart';

enum AbsenceStatus {
  @JsonValue('at_work')
  atWork,
  @JsonValue('on_vacation')
  onVacation,
  @JsonValue('on_sick_leave')
  onSickLeave,
  @JsonValue('on_sick_leave_without_proof')
  onSickLeaveWithoutProof,
  @JsonValue('decree')
  decree,
}

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required int id,
    required String email,
    @JsonKey(name: 'ldap_id')
        required String ldapId,
    required String login,
    @JsonKey(name: 'last_name')
        required String lastName,
    @JsonKey(name: 'first_name')
        required String firstName,
    String? patronymic,
    @Default('user')
        String type,
    String? manager,
    String? grade,
    String? department,
    @Default(0)
    @JsonKey(name: 'vacation_days')
        int vacationDays,
    @Default(AbsenceStatus.atWork)
    @JsonKey(name: 'absence_status')
        AbsenceStatus absenceStatus,
    String? city,
    @JsonKey(name: 'office_name')
        String? officeName,
    // @JsonKey(name: 'office_name', toJson: toJsonEscape)
    //     String? officeName,
    @JsonKey(name: 'city_id')
        int? cityId,
    @JsonKey(name: 'department_id')
        int? departmentId,
    @JsonKey(name: 'firebase_id')
        String? firebaseId,
    @JsonKey(
      name: 'birthday',
      fromJson: fromJsonDateTime,
      toJson: toJsonDateTime,
    )
        DateTime? birthday,
    @JsonKey(name: 'ip_phone')
        String? ipPhone,
    @JsonKey(
      name: 'start_work',
      fromJson: fromJsonDateTime,
      toJson: toJsonDateTime,
    )
        DateTime? startWork,
    String? branch,
    String? team,
    @JsonKey(
      name: 'last_visit',
      fromJson: fromJsonDateTime,
      toJson: toJsonDateTime,
    )
        DateTime? lastVisit,
    @JsonKey(name: 'device_model')
        String? deviceModel,
    @JsonKey(name: 'device_system')
        String? deviceSystem,
    @JsonKey(name: 'device_version')
        String? deviceVersion,
    @JsonKey(name: 'app_version')
        String? appVersion,
    @JsonKey(name: 'app_build')
        String? appBuild,
    @JsonKey(
      name: 'created_at',
      fromJson: fromJsonDateTime,
      toJson: toJsonDateTime,
    )
        DateTime? createdAt,
    @JsonKey(
      name: 'updated_at',
      fromJson: fromJsonDateTime,
      toJson: toJsonDateTime,
    )
        DateTime? updatedAt,
    Map<String, dynamic>? images,
    @Default(<ContactModel>[])
        List<ContactModel> contacts,
  }) = _UserModel;

  factory UserModel.fromJson(Object? json) =>
      _$UserModelFromJson(json! as Map<String, dynamic>);

  const UserModel._();

  @override
  Map<String, dynamic> toJson();

  String get fullName => '$lastName $firstName';

  String get shortName {
    var shortName = '$lastName ${firstName[0]}.';

    if (patronymic != null) {
      shortName += '${patronymic![0]}.';
    }

    return shortName;
  }

  bool get isFake => type == 'fake';
  bool get isSystem => type == 'system';
  bool get isNeonchic => type == 'neonchic';

  bool get atWork => absenceStatus == AbsenceStatus.atWork;
  bool get onVacation => absenceStatus == AbsenceStatus.onVacation;
  bool get onSickLeave => absenceStatus == AbsenceStatus.onSickLeave;
  bool get onSickLeaveWithoutProof =>
      absenceStatus == AbsenceStatus.onSickLeaveWithoutProof;

  String? get avatar => images?['big'] as String?;

  List<ContactModel> get availableContacts {
    return <ContactModel>[
      ContactModel(type: ContactType.email, value: email),
      ContactModel(type: ContactType.teams, value: login),
      ...contacts,
    ];
  }

  String? get startWorkFormatted {
    if (startWork == null) {
      return null;
    }

    return DateFormat('yMd').format(startWork!);
  }

  bool get isInstall => lastVisit != null;
/*
  String? get startWorkFormattedYears {
    if (startWork == null) {
      return null;
    }

    final startWork = startWork;

    final dateDifference = getTheDateDifference(startWork);

    String result = DateFormat('yyyy').format(startWork);

    if (dateDifference.years > 0) {
      result += ' (${plural('year', dateDifference.years)})';
    } else if (dateDifference.months > 0) {
      result += ' (${plural('month', dateDifference.months)})';
    }

    return result;
  }
*/
  String? get fullDepartment {
    if (department == null && branch == null && team == null) {
      return null;
    }

    return '$department\n$branch\n$team'.replaceAll('\nnull', '');
  }

  String? get birthdayFormatted {
    if (birthday == null) {
      return null;
    }

    return DateFormat.MMMMd().format(birthday!);
  }

  String? get birthdayFormattedForProfile {
    if (birthday == null) {
      return null;
    }

    return DateFormat.yMMMMd().format(birthday!);
  }

  String? get lastVisitFormatted {
    if (!isInstall) {
      return null;
    }

    if (isSameDay(lastVisit!, DateTime.now())) {
      return DateFormat('HH:mm').format(lastVisit!);
    }

    return DateFormat('dd.MM.yyyy HH:mm').format(lastVisit!);
  }

  bool get isAndroid => deviceSystem == 'Android';

  bool get isIOS => deviceSystem == 'iOS';
}

Random r = Random();
