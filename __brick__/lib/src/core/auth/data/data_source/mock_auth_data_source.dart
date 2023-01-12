import 'package:dio/dio.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class MockAuthDataSource implements AuthDataSource {
  final AuthenticatedUser _user = const AuthenticatedUser(
    id: -1,
    email: 'admin@email.ru',
    login: 'admin',
    lastName: 'Админов',
    firstName: 'Админ',
  );

  @override
  Future<AuthModel> signIn({required Map<String, dynamic> request}) async {
    if (request['login'] == 'admin' && request['password'] == 'admin') {
      return AuthModel(
        token: 'access_token',
        user: _user,
      );
    }

    throw DioError(requestOptions: RequestOptions(path: 'path'));
  }

  @override
  Future<void> signOut() async {}

  @override
  Future<AuthenticatedUser> verify() async {
    return _user;
  }
}
