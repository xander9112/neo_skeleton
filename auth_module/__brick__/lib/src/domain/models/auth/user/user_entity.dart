import 'package:core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

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
    String? patronymic,
    DateTime? birthday,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = AuthenticatedUser;

  bool get isAuthenticated;
  bool get isNotAuthenticated;
  AuthenticatedUser? get authenticatedOrNull;

  T when<T extends Object?>({
    required T Function(AuthenticatedUser user) authenticated,
    required T Function() notAuthenticated,
  });

  bool get isDemo => isAuthenticated;
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
    required T Function(AuthenticatedUser user) authenticated,
    required T Function() notAuthenticated,
  }) =>
      notAuthenticated();

  @override
  String toString() => 'User is not authenticated';

  @override
  bool operator ==(Object other) => other is NotAuthenticatedUser;

  @override
  int get hashCode => 0;

  @override
  bool get isDemo => false;
}

@freezed
abstract class AuthenticatedUser with _$AuthenticatedUser implements UserEntity {
  const factory AuthenticatedUser({
    required int id,
    required String email,
    required String login,
    @JsonKey(name: 'last_name') required String lastName,
    @JsonKey(name: 'first_name') required String firstName,
    String? patronymic,
    @JsonKey(
      name: 'birthday',
      fromJson: fromJsonDateTime,
      toJson: toJsonDateTime,
    )
    DateTime? birthday,
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
  bool get isNotAuthenticated => false;

  @override
  T when<T extends Object?>({
    required T Function(AuthenticatedUser user) authenticated,
    required T Function() notAuthenticated,
  }) {
    throw UnimplementedError();
  }

  @override
  bool get isDemo => login == 'demo';

  static const AuthenticatedUser empty = AuthenticatedUser(
    id: -1,
    email: '',
    login: '',
    lastName: '',
    firstName: '',
  );

  static const AuthenticatedUser demo = AuthenticatedUser(
    id: -2,
    email: 'demo',
    login: 'demo',
    lastName: 'demo',
    firstName: 'demo',
  );

  String get fullName => '$lastName $firstName';

  String get shortName {
    var shortName = '$lastName ${firstName[0]}.';

    if (patronymic != null) {
      shortName += '${patronymic![0]}.';
    }

    return shortName;
  }
}
