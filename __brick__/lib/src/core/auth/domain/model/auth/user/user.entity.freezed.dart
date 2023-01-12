// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
  @JsonKey(
      name: 'created_at', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'updated_at', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
      @JsonKey(name: 'last_name')
          String lastName,
      @JsonKey(name: 'first_name')
          String firstName,
      @JsonKey(name: 'created_at', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
          DateTime? createdAt,
      @JsonKey(name: 'updated_at', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? login = null,
    Object? lastName = null,
    Object? firstName = null,
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
abstract class _$$_AuthenticatedUserCopyWith<$Res>
    implements $AuthenticatedUserCopyWith<$Res> {
  factory _$$_AuthenticatedUserCopyWith(_$_AuthenticatedUser value,
          $Res Function(_$_AuthenticatedUser) then) =
      __$$_AuthenticatedUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String email,
      String login,
      @JsonKey(name: 'last_name')
          String lastName,
      @JsonKey(name: 'first_name')
          String firstName,
      @JsonKey(name: 'created_at', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
          DateTime? createdAt,
      @JsonKey(name: 'updated_at', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
          DateTime? updatedAt});
}

/// @nodoc
class __$$_AuthenticatedUserCopyWithImpl<$Res>
    extends _$AuthenticatedUserCopyWithImpl<$Res, _$_AuthenticatedUser>
    implements _$$_AuthenticatedUserCopyWith<$Res> {
  __$$_AuthenticatedUserCopyWithImpl(
      _$_AuthenticatedUser _value, $Res Function(_$_AuthenticatedUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? login = null,
    Object? lastName = null,
    Object? firstName = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_AuthenticatedUser(
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
class _$_AuthenticatedUser extends _AuthenticatedUser {
  const _$_AuthenticatedUser(
      {required this.id,
      required this.email,
      required this.login,
      @JsonKey(name: 'last_name')
          required this.lastName,
      @JsonKey(name: 'first_name')
          required this.firstName,
      @JsonKey(name: 'created_at', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
          this.createdAt,
      @JsonKey(name: 'updated_at', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
          this.updatedAt})
      : super._();

  factory _$_AuthenticatedUser.fromJson(Map<String, dynamic> json) =>
      _$$_AuthenticatedUserFromJson(json);

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
  @JsonKey(
      name: 'created_at', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
  final DateTime? createdAt;
  @override
  @JsonKey(
      name: 'updated_at', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'AuthenticatedUser(id: $id, email: $email, login: $login, lastName: $lastName, firstName: $firstName, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticatedUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, email, login, lastName, firstName, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticatedUserCopyWith<_$_AuthenticatedUser> get copyWith =>
      __$$_AuthenticatedUserCopyWithImpl<_$_AuthenticatedUser>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthenticatedUserToJson(
      this,
    );
  }
}

abstract class _AuthenticatedUser extends AuthenticatedUser {
  const factory _AuthenticatedUser(
      {required final int id,
      required final String email,
      required final String login,
      @JsonKey(name: 'last_name')
          required final String lastName,
      @JsonKey(name: 'first_name')
          required final String firstName,
      @JsonKey(name: 'created_at', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
          final DateTime? createdAt,
      @JsonKey(name: 'updated_at', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
          final DateTime? updatedAt}) = _$_AuthenticatedUser;
  const _AuthenticatedUser._() : super._();

  factory _AuthenticatedUser.fromJson(Map<String, dynamic> json) =
      _$_AuthenticatedUser.fromJson;

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
  @JsonKey(
      name: 'created_at', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
  DateTime? get createdAt;
  @override
  @JsonKey(
      name: 'updated_at', fromJson: fromJsonDateTime, toJson: toJsonDateTime)
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_AuthenticatedUserCopyWith<_$_AuthenticatedUser> get copyWith =>
      throw _privateConstructorUsedError;
}
