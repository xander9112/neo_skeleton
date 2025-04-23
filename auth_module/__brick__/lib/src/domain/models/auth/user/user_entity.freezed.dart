// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthenticatedUser _$AuthenticatedUserFromJson(Map<String, dynamic> json) {
  return _AuthenticatedUser.fromJson(json);
}

/// @nodoc
mixin _$AuthenticatedUser {
  int get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get login => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  String? get patronymic => throw _privateConstructorUsedError;
  @JsonKey(name: 'birthday', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
  DateTime? get birthday => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'created_at', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'updated_at', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this AuthenticatedUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthenticatedUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthenticatedUserCopyWith<AuthenticatedUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticatedUserCopyWith<$Res> {
  factory $AuthenticatedUserCopyWith(
          AuthenticatedUser value, $Res Function(AuthenticatedUser) then) =
      _$AuthenticatedUserCopyWithImpl<$Res, AuthenticatedUser>;
  @useResult
  $Res call(
      {int id,
      String email,
      String login,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'first_name') String firstName,
      String? patronymic,
      @JsonKey(
          name: 'birthday', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
      DateTime? birthday,
      @JsonKey(
          name: 'created_at',
          fromJson: fromJsonDateTime,
          toJson: toJsonDateTime)
      DateTime? createdAt,
      @JsonKey(
          name: 'updated_at',
          fromJson: fromJsonDateTime,
          toJson: toJsonDateTime)
      DateTime? updatedAt});
}

/// @nodoc
class _$AuthenticatedUserCopyWithImpl<$Res, $Val extends AuthenticatedUser>
    implements $AuthenticatedUserCopyWith<$Res> {
  _$AuthenticatedUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthenticatedUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? login = null,
    Object? lastName = null,
    Object? firstName = null,
    Object? patronymic = freezed,
    Object? birthday = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthenticatedUserImplCopyWith<$Res>
    implements $AuthenticatedUserCopyWith<$Res> {
  factory _$$AuthenticatedUserImplCopyWith(_$AuthenticatedUserImpl value,
          $Res Function(_$AuthenticatedUserImpl) then) =
      __$$AuthenticatedUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String email,
      String login,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'first_name') String firstName,
      String? patronymic,
      @JsonKey(
          name: 'birthday', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
      DateTime? birthday,
      @JsonKey(
          name: 'created_at',
          fromJson: fromJsonDateTime,
          toJson: toJsonDateTime)
      DateTime? createdAt,
      @JsonKey(
          name: 'updated_at',
          fromJson: fromJsonDateTime,
          toJson: toJsonDateTime)
      DateTime? updatedAt});
}

/// @nodoc
class __$$AuthenticatedUserImplCopyWithImpl<$Res>
    extends _$AuthenticatedUserCopyWithImpl<$Res, _$AuthenticatedUserImpl>
    implements _$$AuthenticatedUserImplCopyWith<$Res> {
  __$$AuthenticatedUserImplCopyWithImpl(_$AuthenticatedUserImpl _value,
      $Res Function(_$AuthenticatedUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthenticatedUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? login = null,
    Object? lastName = null,
    Object? firstName = null,
    Object? patronymic = freezed,
    Object? birthday = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$AuthenticatedUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
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
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticatedUserImpl extends _AuthenticatedUser {
  const _$AuthenticatedUserImpl(
      {required this.id,
      required this.email,
      required this.login,
      @JsonKey(name: 'last_name') required this.lastName,
      @JsonKey(name: 'first_name') required this.firstName,
      this.patronymic,
      @JsonKey(
          name: 'birthday', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
      this.birthday,
      @JsonKey(
          name: 'created_at',
          fromJson: fromJsonDateTime,
          toJson: toJsonDateTime)
      this.createdAt,
      @JsonKey(
          name: 'updated_at',
          fromJson: fromJsonDateTime,
          toJson: toJsonDateTime)
      this.updatedAt})
      : super._();

  factory _$AuthenticatedUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticatedUserImplFromJson(json);

  @override
  final int id;
  @override
  final String email;
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
  @JsonKey(name: 'birthday', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
  final DateTime? birthday;
  @override
  @JsonKey(
      name: 'created_at', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
  final DateTime? createdAt;
  @override
  @JsonKey(
      name: 'updated_at', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'AuthenticatedUser(id: $id, email: $email, login: $login, lastName: $lastName, firstName: $firstName, patronymic: $patronymic, birthday: $birthday, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.patronymic, patronymic) ||
                other.patronymic == patronymic) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, email, login, lastName,
      firstName, patronymic, birthday, createdAt, updatedAt);

  /// Create a copy of AuthenticatedUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatedUserImplCopyWith<_$AuthenticatedUserImpl> get copyWith =>
      __$$AuthenticatedUserImplCopyWithImpl<_$AuthenticatedUserImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticatedUserImplToJson(
      this,
    );
  }
}

abstract class _AuthenticatedUser extends AuthenticatedUser {
  const factory _AuthenticatedUser(
      {required final int id,
      required final String email,
      required final String login,
      @JsonKey(name: 'last_name') required final String lastName,
      @JsonKey(name: 'first_name') required final String firstName,
      final String? patronymic,
      @JsonKey(
          name: 'birthday', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
      final DateTime? birthday,
      @JsonKey(
          name: 'created_at',
          fromJson: fromJsonDateTime,
          toJson: toJsonDateTime)
      final DateTime? createdAt,
      @JsonKey(
          name: 'updated_at',
          fromJson: fromJsonDateTime,
          toJson: toJsonDateTime)
      final DateTime? updatedAt}) = _$AuthenticatedUserImpl;
  const _AuthenticatedUser._() : super._();

  factory _AuthenticatedUser.fromJson(Map<String, dynamic> json) =
      _$AuthenticatedUserImpl.fromJson;

  @override
  int get id;
  @override
  String get email;
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
  @JsonKey(name: 'birthday', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
  DateTime? get birthday;
  @override
  @JsonKey(
      name: 'created_at', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
  DateTime? get createdAt;
  @override
  @JsonKey(
      name: 'updated_at', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
  DateTime? get updatedAt;

  /// Create a copy of AuthenticatedUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticatedUserImplCopyWith<_$AuthenticatedUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
