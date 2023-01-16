import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class MockAuthDataSource implements AuthDataSource {
  @override
  Future<AuthModel> signIn({
    required Map<String, dynamic> request,
  }) async {
    return const AuthModel(
      token: 'token',
      user: AuthenticatedUser(
        id: -1,
        login: 'login',
        lastName: 'lastName',
        firstName: 'firstName',
      ),
    );
  }

  @override
  Future<void> signOut() async {}

  @override
  Future<AuthenticatedUser> verify() async {
    return const AuthenticatedUser(
      id: -1,
      login: 'login',
      lastName: 'lastName',
      firstName: 'firstName',
    );
  }
}
