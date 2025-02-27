import 'dart:convert';

import 'package:auth/src/_src.dart';
import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:settings/settings.dart';

class AuthRepositoryImpl implements AuthRepository<AuthModel, UserEntity> {
  AuthRepositoryImpl({
    required RestAuthDataSource restAuthDataSource,
    required AuthStorage storage,
    required UserSecurityStorage userSecurityStorage,
  })  : _restAuthDataSource = restAuthDataSource,
        _storage = storage,
        _userSecurityStorage = userSecurityStorage;

  final RestAuthDataSource _restAuthDataSource;
  final AuthStorage _storage;
  final UserSecurityStorage _userSecurityStorage;

  @override
  Future<bool> comparePinCode(String value) {
    return _userSecurityStorage.comparePinCode(value);
  }

  @override
  Future<void> deleteAccessToken() {
    return _storage.removeToken();
  }

  @override
  Future<void> deletePinCode() {
    return _userSecurityStorage.removePinCode();
  }

  @override
  Future<void> deleteUseBiometric() {
    return _userSecurityStorage.removeUseBiometric();
  }

  @override
  Future<String?> getAccessToken() {
    return _storage.getToken();
  }

  @override
  Future<bool> hasAccessToken() {
    return _storage.hasToken;
  }

  @override
  Future<bool> hasPinCode() {
    return _userSecurityStorage.hasPinCode;
  }

  @override
  Future<void> setAccessToken(String value) {
    return _storage.setToken(value);
  }

  @override
  Future<void> setPinCode(String value) {
    return _userSecurityStorage.setPinCode(value);
  }

  @override
  Future<void> setUseBiometric({required bool value}) {
    return _userSecurityStorage.setUseBiometric(value);
  }

  @override
  Future<void> setUseLocalAuth(bool value) {
    return _userSecurityStorage.setUseLocalAuth(value);
  }

  @override
  Future<bool> useLocalAuth() {
    return _userSecurityStorage.getUseLocalAuth();
  }

  @override
  Future<void> deleteUseLocalAuth() {
    return _userSecurityStorage.removeUseLocalAuth();
  }

  @override
  Future<Either<Failure, AuthModel>> signIn(
    String login,
    String password,
  ) async {
    try {
      final result = await _restAuthDataSource.signIn(
        request: <String, dynamic>{'login': login, 'password': password},
      );

      await _storage.saveCurrentUser(jsonEncode(result.user.toJson()));

      return Right(result);
    } on DioException catch (e) {
      if (e.type == DioExceptionType.unknown) {
        return Left(
          AuthFailure(code: 0, message: e.message ?? e.error.toString()),
        );
      }

      if (e.type == DioExceptionType.connectionTimeout) {
        return Left(
          AuthFailure(code: 503, message: e.message ?? e.error.toString()),
        );
      }

      return Left(
        AuthFailure(
          code: e.response?.statusCode ?? 0,
          message: e.message ?? e.error.toString(),
        ),
      );
    } catch (e) {
      return Left(
        AuthFailure(code: 0, message: e.toString()),
      );
    }
  }

  @override
  Future<Either<Failure, bool>> signOut() async {
    try {
      await _restAuthDataSource.signOut();

      await _storage.removeCurrentUser();

      return const Right(true);
    } on DioException catch (e) {
      if (e.type == DioExceptionType.unknown) {
        return Left(
          AuthFailure(code: 0, message: ''),
        );
      }

      return Left(
        AuthFailure(code: e.response?.statusCode ?? 0, message: ''),
      );
    } catch (e) {
      return Left(
        AuthFailure(code: 0, message: e.toString()),
      );
    }
  }

  @override
  Future<Either<Failure, AuthenticatedUser>> verify() async {
    try {
      final result = await _restAuthDataSource.verify();

      final token = await _storage.getToken();

      if (token != null) {
        await _storage.setToken(token);
      }

      await _storage.saveCurrentUser(jsonEncode(result.toJson()));

      return Right(result);
    } on DioException catch (e) {
      if (e.type == DioExceptionType.unknown) {
        return Left(
          AuthFailure(code: 0, message: e.message ?? e.error.toString()),
        );
      }

      return Left(
        AuthFailure(
          code: e.response?.statusCode ?? 0,
          message: e.message ?? e.error.toString(),
        ),
      );
    } catch (e) {
      return Left(AuthFailure(code: 0, message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, AuthenticatedUser>> getCurrentUser() async {
    try {
      final user = await _storage.getCurrentUser();

      if (user != null) {
        return Right(AuthenticatedUser.fromJson(jsonDecode(user)));
      }

      return Left(AuthFailure(code: 0, message: 'User not found'));
    } catch (e) {
      return Left(AuthFailure(code: 0, message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> setCurrentUser(UserEntity user) async {
    try {
      await _storage.saveCurrentUser(jsonEncode(user));

      return const Right(null);
    } catch (e) {
      return Left(
        AuthFailure(code: 0, message: ''),
      );
    }
  }

  @override
  Future<void> blockUser(DateTime value) {
    return _storage.blockUser(value);
  }

  @override
  Future<void> unBlocUser() {
    return _storage.unBlockUser();
  }

  @override
  Future<DateTime?> getBlockTime() async {
    return _storage.getBlockTime();
  }
}
