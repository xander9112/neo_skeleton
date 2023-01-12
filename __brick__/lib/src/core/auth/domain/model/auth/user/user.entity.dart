// ignore_for_file: invalid_annotation_target, avoid_final_parameters

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

part 'user.entity.freezed.dart';
part 'user.entity.g.dart';

@immutable
abstract class UserEntity {
  @literal
  const factory UserEntity.notAuthenticated() = NotAuthenticatedUser;

  const factory UserEntity.authenticated({
    required int id,
    required String email,
    required String login,
    required String lastName,
    required String firstName,
    DateTime? createdAt,
    DateTime? updatedAt,
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
    required String login,
    @JsonKey(name: 'last_name')
        required String lastName,
    @JsonKey(name: 'first_name')
        required String firstName,
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
    final shortName = '$lastName ${firstName[0]}.';

    return shortName;
  }
}
