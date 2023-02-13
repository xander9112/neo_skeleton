import 'package:dartz/dartz.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

abstract class AuthRepository<A, U> {
  Future<Either<Failure, A>> signIn(String login, String password);

  Future<Either<Failure, bool>> signOut();

  Future<bool> hasAccessToken();

  Future<void> setAccessToken(String value);

  Future<String?> getAccessToken();

  Future<void> deleteAccessToken();

  Future<Either<Failure, U>> verify();

  Future<void> setPinCode(String value);

  Future<bool> comparePinCode(String value);

  Future<void> deletePinCode();

  Future<bool> hasPinCode();

  Future<void> deleteUseBiometric();

  Future<void> setUseBiometric({required bool value});

  Future<void> setUserType(String type);

  Future<void> deleteUserType();

  Future<void> setUseLocalAuth(bool value);

  Future<bool> useLocalAuth();
}
