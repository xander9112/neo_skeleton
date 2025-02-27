import 'package:auth/src/_src.dart';

abstract class AuthDataSource {
  Future<AuthModel> signIn({
    required Map<String, dynamic> request,
  });

  Future<void> signOut();

  Future<AuthenticatedUser> verify();

  Future<void> updateDeviceInfo({
    required Map<String, dynamic> request,
  });
}
