import 'package:auth/src/_src.dart';

class MockAuthDataSource implements RestAuthDataSource {
  @override
  Future<AuthModel> signIn({
    required Map<String, dynamic> request,
  }) async {
    return const AuthModel(
      token: 'token',
      user: AuthenticatedUser.empty,
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
    return AuthenticatedUser.empty;
  }
}
