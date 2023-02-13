import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class MockAuthDataSource implements RestAuthDataSource {
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
        email: '',
        ldapId: '',
      ),
    );
  }

  @override
  Future<void> signOut() async {}

  @override
  Future<void> updateDeviceInfo({
    required Map<String, dynamic> request,
  }) async {}

  @override
  Future<AuthenticatedUser> verify() async {
    return const AuthenticatedUser(
      id: -1,
      login: 'login',
      lastName: 'lastName',
      firstName: 'firstName',
      email: '',
      ldapId: '',
    );
  }
}
