// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  int get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'ldap_id')
  String get ldapId => throw _privateConstructorUsedError;
  String get login => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  String? get patronymic => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String? get manager => throw _privateConstructorUsedError;
  String? get grade => throw _privateConstructorUsedError;
  String? get department => throw _privateConstructorUsedError;
  @JsonKey(name: 'vacation_days')
  int get vacationDays => throw _privateConstructorUsedError;
  @JsonKey(name: 'absence_status')
  AbsenceStatus get absenceStatus => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'office_name')
  String? get officeName =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'office_name', toJson: toJsonEscape)
//     String? officeName,
  @JsonKey(name: 'city_id')
  int? get cityId => throw _privateConstructorUsedError;
  @JsonKey(name: 'department_id')
  int? get departmentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'firebase_id')
  String? get firebaseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'birthday', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
  DateTime? get birthday => throw _privateConstructorUsedError;
  @JsonKey(name: 'ip_phone')
  String? get ipPhone => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'start_work', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
  DateTime? get startWork => throw _privateConstructorUsedError;
  String? get branch => throw _privateConstructorUsedError;
  String? get team => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'last_visit', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
  DateTime? get lastVisit => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_model')
  String? get deviceModel => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_system')
  String? get deviceSystem => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_version')
  String? get deviceVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'app_version')
  String? get appVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'app_build')
  String? get appBuild => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'created_at', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'updated_at', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  Map<String, dynamic>? get images => throw _privateConstructorUsedError;
  List<ContactModel> get contacts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {int id,
      String email,
      @JsonKey(name: 'ldap_id')
          String ldapId,
      String login,
      @JsonKey(name: 'last_name')
          String lastName,
      @JsonKey(name: 'first_name')
          String firstName,
      String? patronymic,
      String type,
      String? manager,
      String? grade,
      String? department,
      @JsonKey(name: 'vacation_days')
          int vacationDays,
      @JsonKey(name: 'absence_status')
          AbsenceStatus absenceStatus,
      String? city,
      @JsonKey(name: 'office_name')
          String? officeName,
      @JsonKey(name: 'city_id')
          int? cityId,
      @JsonKey(name: 'department_id')
          int? departmentId,
      @JsonKey(name: 'firebase_id')
          String? firebaseId,
      @JsonKey(name: 'birthday', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
          DateTime? birthday,
      @JsonKey(name: 'ip_phone')
          String? ipPhone,
      @JsonKey(name: 'start_work', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
          DateTime? startWork,
      String? branch,
      String? team,
      @JsonKey(name: 'last_visit', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
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
      @JsonKey(name: 'created_at', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
          DateTime? createdAt,
      @JsonKey(name: 'updated_at', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
          DateTime? updatedAt,
      Map<String, dynamic>? images,
      List<ContactModel> contacts});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? ldapId = null,
    Object? login = null,
    Object? lastName = null,
    Object? firstName = null,
    Object? patronymic = freezed,
    Object? type = null,
    Object? manager = freezed,
    Object? grade = freezed,
    Object? department = freezed,
    Object? vacationDays = null,
    Object? absenceStatus = null,
    Object? city = freezed,
    Object? officeName = freezed,
    Object? cityId = freezed,
    Object? departmentId = freezed,
    Object? firebaseId = freezed,
    Object? birthday = freezed,
    Object? ipPhone = freezed,
    Object? startWork = freezed,
    Object? branch = freezed,
    Object? team = freezed,
    Object? lastVisit = freezed,
    Object? deviceModel = freezed,
    Object? deviceSystem = freezed,
    Object? deviceVersion = freezed,
    Object? appVersion = freezed,
    Object? appBuild = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? images = freezed,
    Object? contacts = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      ldapId: null == ldapId
          ? _value.ldapId
          : ldapId // ignore: cast_nullable_to_non_nullable
              as String,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      patronymic: freezed == patronymic
          ? _value.patronymic
          : patronymic // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      manager: freezed == manager
          ? _value.manager
          : manager // ignore: cast_nullable_to_non_nullable
              as String?,
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      vacationDays: null == vacationDays
          ? _value.vacationDays
          : vacationDays // ignore: cast_nullable_to_non_nullable
              as int,
      absenceStatus: null == absenceStatus
          ? _value.absenceStatus
          : absenceStatus // ignore: cast_nullable_to_non_nullable
              as AbsenceStatus,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      officeName: freezed == officeName
          ? _value.officeName
          : officeName // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: freezed == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int?,
      departmentId: freezed == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as int?,
      firebaseId: freezed == firebaseId
          ? _value.firebaseId
          : firebaseId // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      ipPhone: freezed == ipPhone
          ? _value.ipPhone
          : ipPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      startWork: freezed == startWork
          ? _value.startWork
          : startWork // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      branch: freezed == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as String?,
      team: freezed == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as String?,
      lastVisit: freezed == lastVisit
          ? _value.lastVisit
          : lastVisit // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deviceModel: freezed == deviceModel
          ? _value.deviceModel
          : deviceModel // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceSystem: freezed == deviceSystem
          ? _value.deviceSystem
          : deviceSystem // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceVersion: freezed == deviceVersion
          ? _value.deviceVersion
          : deviceVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      appVersion: freezed == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      appBuild: freezed == appBuild
          ? _value.appBuild
          : appBuild // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      contacts: null == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<ContactModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$$_UserModelCopyWith(
          _$_UserModel value, $Res Function(_$_UserModel) then) =
      __$$_UserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String email,
      @JsonKey(name: 'ldap_id')
          String ldapId,
      String login,
      @JsonKey(name: 'last_name')
          String lastName,
      @JsonKey(name: 'first_name')
          String firstName,
      String? patronymic,
      String type,
      String? manager,
      String? grade,
      String? department,
      @JsonKey(name: 'vacation_days')
          int vacationDays,
      @JsonKey(name: 'absence_status')
          AbsenceStatus absenceStatus,
      String? city,
      @JsonKey(name: 'office_name')
          String? officeName,
      @JsonKey(name: 'city_id')
          int? cityId,
      @JsonKey(name: 'department_id')
          int? departmentId,
      @JsonKey(name: 'firebase_id')
          String? firebaseId,
      @JsonKey(name: 'birthday', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
          DateTime? birthday,
      @JsonKey(name: 'ip_phone')
          String? ipPhone,
      @JsonKey(name: 'start_work', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
          DateTime? startWork,
      String? branch,
      String? team,
      @JsonKey(name: 'last_visit', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
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
      @JsonKey(name: 'created_at', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
          DateTime? createdAt,
      @JsonKey(name: 'updated_at', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
          DateTime? updatedAt,
      Map<String, dynamic>? images,
      List<ContactModel> contacts});
}

/// @nodoc
class __$$_UserModelCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$_UserModel>
    implements _$$_UserModelCopyWith<$Res> {
  __$$_UserModelCopyWithImpl(
      _$_UserModel _value, $Res Function(_$_UserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? ldapId = null,
    Object? login = null,
    Object? lastName = null,
    Object? firstName = null,
    Object? patronymic = freezed,
    Object? type = null,
    Object? manager = freezed,
    Object? grade = freezed,
    Object? department = freezed,
    Object? vacationDays = null,
    Object? absenceStatus = null,
    Object? city = freezed,
    Object? officeName = freezed,
    Object? cityId = freezed,
    Object? departmentId = freezed,
    Object? firebaseId = freezed,
    Object? birthday = freezed,
    Object? ipPhone = freezed,
    Object? startWork = freezed,
    Object? branch = freezed,
    Object? team = freezed,
    Object? lastVisit = freezed,
    Object? deviceModel = freezed,
    Object? deviceSystem = freezed,
    Object? deviceVersion = freezed,
    Object? appVersion = freezed,
    Object? appBuild = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? images = freezed,
    Object? contacts = null,
  }) {
    return _then(_$_UserModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      ldapId: null == ldapId
          ? _value.ldapId
          : ldapId // ignore: cast_nullable_to_non_nullable
              as String,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      patronymic: freezed == patronymic
          ? _value.patronymic
          : patronymic // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      manager: freezed == manager
          ? _value.manager
          : manager // ignore: cast_nullable_to_non_nullable
              as String?,
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as String?,
      department: freezed == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as String?,
      vacationDays: null == vacationDays
          ? _value.vacationDays
          : vacationDays // ignore: cast_nullable_to_non_nullable
              as int,
      absenceStatus: null == absenceStatus
          ? _value.absenceStatus
          : absenceStatus // ignore: cast_nullable_to_non_nullable
              as AbsenceStatus,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      officeName: freezed == officeName
          ? _value.officeName
          : officeName // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: freezed == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int?,
      departmentId: freezed == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as int?,
      firebaseId: freezed == firebaseId
          ? _value.firebaseId
          : firebaseId // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      ipPhone: freezed == ipPhone
          ? _value.ipPhone
          : ipPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      startWork: freezed == startWork
          ? _value.startWork
          : startWork // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      branch: freezed == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as String?,
      team: freezed == team
          ? _value.team
          : team // ignore: cast_nullable_to_non_nullable
              as String?,
      lastVisit: freezed == lastVisit
          ? _value.lastVisit
          : lastVisit // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deviceModel: freezed == deviceModel
          ? _value.deviceModel
          : deviceModel // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceSystem: freezed == deviceSystem
          ? _value.deviceSystem
          : deviceSystem // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceVersion: freezed == deviceVersion
          ? _value.deviceVersion
          : deviceVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      appVersion: freezed == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      appBuild: freezed == appBuild
          ? _value.appBuild
          : appBuild // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      contacts: null == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<ContactModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModel extends _UserModel {
  const _$_UserModel(
      {required this.id,
      required this.email,
      @JsonKey(name: 'ldap_id')
          required this.ldapId,
      required this.login,
      @JsonKey(name: 'last_name')
          required this.lastName,
      @JsonKey(name: 'first_name')
          required this.firstName,
      this.patronymic,
      this.type = 'user',
      this.manager,
      this.grade,
      this.department,
      @JsonKey(name: 'vacation_days')
          this.vacationDays = 0,
      @JsonKey(name: 'absence_status')
          this.absenceStatus = AbsenceStatus.atWork,
      this.city,
      @JsonKey(name: 'office_name')
          this.officeName,
      @JsonKey(name: 'city_id')
          this.cityId,
      @JsonKey(name: 'department_id')
          this.departmentId,
      @JsonKey(name: 'firebase_id')
          this.firebaseId,
      @JsonKey(name: 'birthday', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
          this.birthday,
      @JsonKey(name: 'ip_phone')
          this.ipPhone,
      @JsonKey(name: 'start_work', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
          this.startWork,
      this.branch,
      this.team,
      @JsonKey(name: 'last_visit', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
          this.lastVisit,
      @JsonKey(name: 'device_model')
          this.deviceModel,
      @JsonKey(name: 'device_system')
          this.deviceSystem,
      @JsonKey(name: 'device_version')
          this.deviceVersion,
      @JsonKey(name: 'app_version')
          this.appVersion,
      @JsonKey(name: 'app_build')
          this.appBuild,
      @JsonKey(name: 'created_at', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
          this.createdAt,
      @JsonKey(name: 'updated_at', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
          this.updatedAt,
      final Map<String, dynamic>? images,
      final List<ContactModel> contacts = const <ContactModel>[]})
      : _images = images,
        _contacts = contacts,
        super._();

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelFromJson(json);

  @override
  final int id;
  @override
  final String email;
  @override
  @JsonKey(name: 'ldap_id')
  final String ldapId;
  @override
  final String login;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;
  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  final String? patronymic;
  @override
  @JsonKey()
  final String type;
  @override
  final String? manager;
  @override
  final String? grade;
  @override
  final String? department;
  @override
  @JsonKey(name: 'vacation_days')
  final int vacationDays;
  @override
  @JsonKey(name: 'absence_status')
  final AbsenceStatus absenceStatus;
  @override
  final String? city;
  @override
  @JsonKey(name: 'office_name')
  final String? officeName;
// @JsonKey(name: 'office_name', toJson: toJsonEscape)
//     String? officeName,
  @override
  @JsonKey(name: 'city_id')
  final int? cityId;
  @override
  @JsonKey(name: 'department_id')
  final int? departmentId;
  @override
  @JsonKey(name: 'firebase_id')
  final String? firebaseId;
  @override
  @JsonKey(name: 'birthday', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
  final DateTime? birthday;
  @override
  @JsonKey(name: 'ip_phone')
  final String? ipPhone;
  @override
  @JsonKey(
      name: 'start_work', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
  final DateTime? startWork;
  @override
  final String? branch;
  @override
  final String? team;
  @override
  @JsonKey(
      name: 'last_visit', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
  final DateTime? lastVisit;
  @override
  @JsonKey(name: 'device_model')
  final String? deviceModel;
  @override
  @JsonKey(name: 'device_system')
  final String? deviceSystem;
  @override
  @JsonKey(name: 'device_version')
  final String? deviceVersion;
  @override
  @JsonKey(name: 'app_version')
  final String? appVersion;
  @override
  @JsonKey(name: 'app_build')
  final String? appBuild;
  @override
  @JsonKey(
      name: 'created_at', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
  final DateTime? createdAt;
  @override
  @JsonKey(
      name: 'updated_at', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
  final DateTime? updatedAt;
  final Map<String, dynamic>? _images;
  @override
  Map<String, dynamic>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableMapView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<ContactModel> _contacts;
  @override
  @JsonKey()
  List<ContactModel> get contacts {
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  @override
  String toString() {
    return 'UserModel(id: $id, email: $email, ldapId: $ldapId, login: $login, lastName: $lastName, firstName: $firstName, patronymic: $patronymic, type: $type, manager: $manager, grade: $grade, department: $department, vacationDays: $vacationDays, absenceStatus: $absenceStatus, city: $city, officeName: $officeName, cityId: $cityId, departmentId: $departmentId, firebaseId: $firebaseId, birthday: $birthday, ipPhone: $ipPhone, startWork: $startWork, branch: $branch, team: $team, lastVisit: $lastVisit, deviceModel: $deviceModel, deviceSystem: $deviceSystem, deviceVersion: $deviceVersion, appVersion: $appVersion, appBuild: $appBuild, createdAt: $createdAt, updatedAt: $updatedAt, images: $images, contacts: $contacts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.ldapId, ldapId) || other.ldapId == ldapId) &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.patronymic, patronymic) ||
                other.patronymic == patronymic) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.manager, manager) || other.manager == manager) &&
            (identical(other.grade, grade) || other.grade == grade) &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.vacationDays, vacationDays) ||
                other.vacationDays == vacationDays) &&
            (identical(other.absenceStatus, absenceStatus) ||
                other.absenceStatus == absenceStatus) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.officeName, officeName) ||
                other.officeName == officeName) &&
            (identical(other.cityId, cityId) || other.cityId == cityId) &&
            (identical(other.departmentId, departmentId) ||
                other.departmentId == departmentId) &&
            (identical(other.firebaseId, firebaseId) ||
                other.firebaseId == firebaseId) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.ipPhone, ipPhone) || other.ipPhone == ipPhone) &&
            (identical(other.startWork, startWork) ||
                other.startWork == startWork) &&
            (identical(other.branch, branch) || other.branch == branch) &&
            (identical(other.team, team) || other.team == team) &&
            (identical(other.lastVisit, lastVisit) ||
                other.lastVisit == lastVisit) &&
            (identical(other.deviceModel, deviceModel) ||
                other.deviceModel == deviceModel) &&
            (identical(other.deviceSystem, deviceSystem) ||
                other.deviceSystem == deviceSystem) &&
            (identical(other.deviceVersion, deviceVersion) ||
                other.deviceVersion == deviceVersion) &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion) &&
            (identical(other.appBuild, appBuild) ||
                other.appBuild == appBuild) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._contacts, _contacts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        email,
        ldapId,
        login,
        lastName,
        firstName,
        patronymic,
        type,
        manager,
        grade,
        department,
        vacationDays,
        absenceStatus,
        city,
        officeName,
        cityId,
        departmentId,
        firebaseId,
        birthday,
        ipPhone,
        startWork,
        branch,
        team,
        lastVisit,
        deviceModel,
        deviceSystem,
        deviceVersion,
        appVersion,
        appBuild,
        createdAt,
        updatedAt,
        const DeepCollectionEquality().hash(_images),
        const DeepCollectionEquality().hash(_contacts)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      __$$_UserModelCopyWithImpl<_$_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelToJson(
      this,
    );
  }
}

abstract class _UserModel extends UserModel {
  const factory _UserModel(
      {required final int id,
      required final String email,
      @JsonKey(name: 'ldap_id')
          required final String ldapId,
      required final String login,
      @JsonKey(name: 'last_name')
          required final String lastName,
      @JsonKey(name: 'first_name')
          required final String firstName,
      final String? patronymic,
      final String type,
      final String? manager,
      final String? grade,
      final String? department,
      @JsonKey(name: 'vacation_days')
          final int vacationDays,
      @JsonKey(name: 'absence_status')
          final AbsenceStatus absenceStatus,
      final String? city,
      @JsonKey(name: 'office_name')
          final String? officeName,
      @JsonKey(name: 'city_id')
          final int? cityId,
      @JsonKey(name: 'department_id')
          final int? departmentId,
      @JsonKey(name: 'firebase_id')
          final String? firebaseId,
      @JsonKey(name: 'birthday', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
          final DateTime? birthday,
      @JsonKey(name: 'ip_phone')
          final String? ipPhone,
      @JsonKey(name: 'start_work', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
          final DateTime? startWork,
      final String? branch,
      final String? team,
      @JsonKey(name: 'last_visit', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
          final DateTime? lastVisit,
      @JsonKey(name: 'device_model')
          final String? deviceModel,
      @JsonKey(name: 'device_system')
          final String? deviceSystem,
      @JsonKey(name: 'device_version')
          final String? deviceVersion,
      @JsonKey(name: 'app_version')
          final String? appVersion,
      @JsonKey(name: 'app_build')
          final String? appBuild,
      @JsonKey(name: 'created_at', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
          final DateTime? createdAt,
      @JsonKey(name: 'updated_at', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
          final DateTime? updatedAt,
      final Map<String, dynamic>? images,
      final List<ContactModel> contacts}) = _$_UserModel;
  const _UserModel._() : super._();

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  int get id;
  @override
  String get email;
  @override
  @JsonKey(name: 'ldap_id')
  String get ldapId;
  @override
  String get login;
  @override
  @JsonKey(name: 'last_name')
  String get lastName;
  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  String? get patronymic;
  @override
  String get type;
  @override
  String? get manager;
  @override
  String? get grade;
  @override
  String? get department;
  @override
  @JsonKey(name: 'vacation_days')
  int get vacationDays;
  @override
  @JsonKey(name: 'absence_status')
  AbsenceStatus get absenceStatus;
  @override
  String? get city;
  @override
  @JsonKey(name: 'office_name')
  String? get officeName;
  @override // @JsonKey(name: 'office_name', toJson: toJsonEscape)
//     String? officeName,
  @JsonKey(name: 'city_id')
  int? get cityId;
  @override
  @JsonKey(name: 'department_id')
  int? get departmentId;
  @override
  @JsonKey(name: 'firebase_id')
  String? get firebaseId;
  @override
  @JsonKey(name: 'birthday', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
  DateTime? get birthday;
  @override
  @JsonKey(name: 'ip_phone')
  String? get ipPhone;
  @override
  @JsonKey(
      name: 'start_work', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
  DateTime? get startWork;
  @override
  String? get branch;
  @override
  String? get team;
  @override
  @JsonKey(
      name: 'last_visit', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
  DateTime? get lastVisit;
  @override
  @JsonKey(name: 'device_model')
  String? get deviceModel;
  @override
  @JsonKey(name: 'device_system')
  String? get deviceSystem;
  @override
  @JsonKey(name: 'device_version')
  String? get deviceVersion;
  @override
  @JsonKey(name: 'app_version')
  String? get appVersion;
  @override
  @JsonKey(name: 'app_build')
  String? get appBuild;
  @override
  @JsonKey(
      name: 'created_at', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
  DateTime? get createdAt;
  @override
  @JsonKey(
      name: 'updated_at', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
  DateTime? get updatedAt;
  @override
  Map<String, dynamic>? get images;
  @override
  List<ContactModel> get contacts;
  @override
  @JsonKey(ignore: true)
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
