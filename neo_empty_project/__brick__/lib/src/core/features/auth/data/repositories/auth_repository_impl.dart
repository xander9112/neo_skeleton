import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class AuthRepositoryImpl
    implements AuthRepository<AuthModel, AuthenticatedUser> {
  AuthRepositoryImpl(this._restAuthDataSource, this._secureStorageService);

  final RestAuthDataSource _restAuthDataSource;
  final SecureStorageService _secureStorageService;

  @override
  Future<bool> comparePinCode(String value) {
    return _secureStorageService.comparePinCode(value);
  }

  @override
  Future<void> deleteAccessToken() {
    return _secureStorageService.removeToken();
  }

  @override
  Future<void> deletePinCode() {
    return _secureStorageService.removePinCode();
  }

  @override
  Future<void> deleteUseBiometric() {
    return _secureStorageService.removeUseBiometric();
  }

  @override
  Future<String?> getAccessToken() {
    return _secureStorageService.getToken();
  }

  @override
  Future<bool> hasAccessToken() {
    return _secureStorageService.hasToken;
  }

  @override
  Future<bool> hasPinCode() {
    return _secureStorageService.hasPinCode;
  }

  @override
  Future<void> setAccessToken(String value) {
    return _secureStorageService.setToken(value);
  }

  @override
  Future<void> setPinCode(String value) {
    return _secureStorageService.setPinCode(value);
  }

  @override
  Future<void> setUseBiometric({required bool value}) {
    return _secureStorageService.setUseBiometric(value);
  }

  @override
  Future<void> setUseLocalAuth(bool value) {
    return _secureStorageService.setUseLocalAuth(value);
  }

  @override
  Future<bool> useLocalAuth() {
    return _secureStorageService.getUseLocalAuth();
  }

  @override
  Future<void> deleteUseLocalAuth() {
    return _secureStorageService.removeUseLocalAuth();
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

       await _secureStorageService
          .saveCurrentUser(jsonEncode(result.user.toJson()));

      return Right(result);
    } on DioError catch (e) {
      if (e.type == DioErrorType.unknown) {
        return Left(
          AuthFailure(code: 0, message: ''),
        );
      }

      return Left(
        AuthFailure(code: e.response?.statusCode ?? 0, message: ''),
      );
    } catch (e) {
      return Left(
        AuthFailure(code: 0, message: ''),
      );
    }
  }

  @override
  Future<Either<Failure, bool>> signOut() async {
    try {
      await _restAuthDataSource.signOut();

      await _secureStorageService.removeCurrentUser();

      return const Right(true);
    } on DioError catch (e) {
      if (e.type == DioErrorType.unknown) {
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

      await _secureStorageService.saveCurrentUser(jsonEncode(result.toJson()));

      return Right(result);
    } on DioError catch (e) {
      if (e.type == DioErrorType.unknown) {
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
  Future<Either<Failure, AuthenticatedUser>> getCurrentUser() async {
    try {
      final user = await _secureStorageService.getCurrentUser();
      if (user != null) {
        return Right(AuthenticatedUser.fromJson(jsonDecode(user)));
      }

      return Left(
        AuthFailure(code: 0, message: ''),
      );
    } catch (e) {
      return Left(
        AuthFailure(code: 0, message: ''),
      );
    }
  }

  @override
  Future<Either<Failure, void>> setCurrentUser(AuthenticatedUser user) async {
    try {
      await _secureStorageService.saveCurrentUser(jsonEncode(user));

      return const Right(null);
    } catch (e) {
      return Left(
        AuthFailure(code: 0, message: ''),
      );
    }
  }
}
