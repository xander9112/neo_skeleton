// ignore_for_file: invalid_annotation_target, avoid_final_parameters

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/core/_core.dart';

part 'user.entity.freezed.dart';
part 'user.entity.g.dart';

@immutable
abstract class UserEntity {
  @literal
  const factory UserEntity.notAuthenticated() = NotAuthenticatedUser;

  const factory UserEntity.authenticated({
    required int id,
    required String email,
    required String ldapId,
    required String login,
    required String lastName,
    required String firstName,
    String? patronymic,
    String? manager,
    String? grade,
    String? department,
    String? city,
    String? officeName,
    int? cityId,
    int? departmentId,
    DateTime? birthday,
    String? ipPhone,
    DateTime? startWork,
    String? branch,
    String? team,
    DateTime? createdAt,
    DateTime? updatedAt,
    Map<String, dynamic>? images,
    List<ContactModel> contacts,
    UserSettingsModel? settings,
  }) = AuthenticatedUser;

  bool get isAuthenticated;
  bool get isNotAuthenticated;
  AuthenticatedUser? get authenticatedOrNull;

  T when<T extends Object?>({
    required final T Function(AuthenticatedUser user) authenticated,
    required final T Function() notAuthenticated,
  });
}

@immutable
class NotAuthenticatedUser implements UserEntity {
  @literal
  const NotAuthenticatedUser();

  @override
  bool get isAuthenticated => false;

  @override
  bool get isNotAuthenticated => true;

  @override
  AuthenticatedUser? get authenticatedOrNull => null;

  @override
  T when<T extends Object?>({
    required final T Function(AuthenticatedUser user) authenticated,
    required final T Function() notAuthenticated,
  }) =>
      notAuthenticated();

  @override
  String toString() => 'User is not authenticated';

  @override
  bool operator ==(final Object other) => other is NotAuthenticatedUser;

  @override
  int get hashCode => 0;
}

@freezed
class AuthenticatedUser with _$AuthenticatedUser implements UserEntity {
  const factory AuthenticatedUser({
    required int id,
    required String email,
    @JsonKey(name: 'ldap_id')
        required String ldapId,
    required String login,
    @JsonKey(name: 'last_name')
        required String lastName,
    @JsonKey(name: 'first_name')
        required String firstName,
    @Default('user')
        String type,
    @Default(0)
    @JsonKey(name: 'vacation_days')
        int vacationDays,
    @Default(AbsenceStatus.atWork)
    @JsonKey(name: 'absence_status')
        AbsenceStatus absenceStatus,
    String? patronymic,
    String? manager,
    String? grade,
    String? department,
    String? city,
    @JsonKey(name: 'office_name')
        String? officeName,
    @JsonKey(name: 'city_id')
        int? cityId,
    @JsonKey(name: 'department_id')
        int? departmentId,
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
    UserSettingsModel? settings,
  }) = _AuthenticatedUser;

  factory AuthenticatedUser.fromJson(Object? json) =>
      _$AuthenticatedUserFromJson(json! as Map<String, dynamic>);

  const AuthenticatedUser._();

  @override
  Map<String, dynamic> toJson();

  @override
  AuthenticatedUser? get authenticatedOrNull =>
      isNotAuthenticated ? null : this;

  @override
  bool get isAuthenticated => !isNotAuthenticated;

  @override
  bool get isNotAuthenticated => true;

  @override
  T when<T extends Object?>({
    required T Function(AuthenticatedUser user) authenticated,
    required T Function() notAuthenticated,
  }) {
    throw UnimplementedError();
  }

  String get fullName => '$lastName $firstName';

  String get shortName {
    var shortName = '$lastName ${firstName[0]}.';

    if (patronymic != null) {
      shortName += '${patronymic![0]}.';
    }

    return shortName;
  }

  String? get avatar => images?['big'] as String?;

  bool get isFake => type == 'fake';
  bool get isSystem => type == 'system';
  bool get isNeonchic => type == 'neonchic';

  List<ContactModel> get availableContacts {
    return <ContactModel>[
      ContactModel(type: ContactType.email, value: email),
      ContactModel(type: ContactType.teams, value: login),
      ...contacts,
    ];
  }
}
