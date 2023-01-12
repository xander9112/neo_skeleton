import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/core/_core.dart';

class AuthRepositoryImpl
    implements AuthRepository<AuthModel, AuthenticatedUser> {
  AuthRepositoryImpl(this._restAuthDatasource, this._secureStorageService);

  final RestAuthDatasource _restAuthDatasource;
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
      final result = await _restAuthDatasource.signIn(
        request: <String, dynamic>{'login': login, 'password': password},
      );

      return Right(result);
    } on DioError catch (e) {
      final httpCode = HttpCodes.values.singleWhere(
        (element) => element.code == (e.response?.statusCode ?? 0),
        orElse: () => HttpCodes.unknown,
      );
      return Left(
        HttpFailure(
          httpCode,
          code: httpCode.code,
          message: httpCode.getLocalizedString(),
        ),
      );
    } catch (e) {
      return Left(
        HttpFailure(
          HttpCodes.unknown,
          code: HttpCodes.unknown.code,
          message: HttpCodes.unknown.getLocalizedString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, bool>> signOut() async {
    try {
      await _restAuthDatasource.signOut();

      return const Right(true);
    } on DioError catch (e) {
      final httpCode = HttpCodes.values.singleWhere(
        (element) => element.code == (e.response?.statusCode ?? 0),
        orElse: () => HttpCodes.unknown,
      );
      return Left(
        HttpFailure(
          httpCode,
          code: httpCode.code,
          message: httpCode.getLocalizedString(),
        ),
      );
    } catch (e) {
      return Left(
        HttpFailure(
          HttpCodes.unknown,
          code: HttpCodes.unknown.code,
          message: HttpCodes.unknown.getLocalizedString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, AuthenticatedUser>> verify() async {
    try {
      final result = await _restAuthDatasource.verify();

      return Right(result);
    } on DioError catch (e) {
      final httpCode = HttpCodes.values.singleWhere(
        (element) => element.code == (e.response?.statusCode ?? 0),
        orElse: () => HttpCodes.unknown,
      );
      return Left(
        HttpFailure(
          httpCode,
          code: httpCode.code,
          message: httpCode.getLocalizedString(),
        ),
      );
    } catch (e) {
      return Left(
        HttpFailure(
          HttpCodes.unknown,
          code: HttpCodes.unknown.code,
          message: HttpCodes.unknown.getLocalizedString(),
        ),
      );
    }
  }
}
