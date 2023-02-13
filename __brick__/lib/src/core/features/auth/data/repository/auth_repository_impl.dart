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
  Future<void> deleteUserType() {
    return _secureStorageService.removeUserType();
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
  Future<void> setUserType(String type) {
    return _secureStorageService.setUserType(type);
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

      return Right(result);
    } on DioError catch (e) {
      if (e.type == DioErrorType.unknown) {
        return Left(
          AuthFailure(
            code: 0,
            message:
                AuthFailureReason.checkInternetConnection.getLocalizedString(),
            reason: AuthFailureReason.checkInternetConnection,
          ),
        );
      }

      final reason = AuthFailureReason.values.singleWhere(
        (element) => element.code == (e.response?.statusCode ?? 0),
        orElse: () => AuthFailureReason.unknown,
      );

      return Left(
        AuthFailure(
          code: reason.code,
          message: reason.getLocalizedString(),
          reason: reason,
        ),
      );
    } catch (e) {
      return Left(
        AuthFailure(
          code: AuthFailureReason.unknown.code,
          message: AuthFailureReason.unknown.getLocalizedString(),
          reason: AuthFailureReason.unknown,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, bool>> signOut() async {
    try {
      await _restAuthDataSource.signOut();

      return const Right(true);
    } on DioError catch (e) {
      if (e.type == DioErrorType.unknown) {
        return Left(
          AuthFailure(
            code: 0,
            message:
                AuthFailureReason.checkInternetConnection.getLocalizedString(),
            reason: AuthFailureReason.checkInternetConnection,
          ),
        );
      }

      final reason = AuthFailureReason.values.singleWhere(
        (element) => element.code == (e.response?.statusCode ?? 0),
        orElse: () => AuthFailureReason.unknown,
      );

      return Left(
        AuthFailure(
          code: reason.code,
          message: reason.getLocalizedString(),
          reason: reason,
        ),
      );
    } catch (e) {
      return Left(
        AuthFailure(
          code: AuthFailureReason.unknown.code,
          message: AuthFailureReason.unknown.getLocalizedString(),
          reason: AuthFailureReason.unknown,
        ),
      );
    }
  }

  @override
  Future<Either<Failure, AuthenticatedUser>> verify() async {
    try {
      final result = await _restAuthDataSource.verify();

      return Right(result);
    } on DioError catch (e) {
      if (e.type == DioErrorType.unknown) {
        return Left(
          AuthFailure(
            code: 0,
            message:
                AuthFailureReason.checkInternetConnection.getLocalizedString(),
            reason: AuthFailureReason.checkInternetConnection,
          ),
        );
      }

      final reason = AuthFailureReason.values.singleWhere(
        (element) => element.code == (e.response?.statusCode ?? 0),
        orElse: () => AuthFailureReason.unknown,
      );

      return Left(
        AuthFailure(
          code: reason.code,
          message: reason.getLocalizedString(),
          reason: reason,
        ),
      );
    } catch (e) {
      return Left(
        AuthFailure(
          code: AuthFailureReason.unknown.code,
          message: AuthFailureReason.unknown.getLocalizedString(),
          reason: AuthFailureReason.unknown,
        ),
      );
    }
  }
}
