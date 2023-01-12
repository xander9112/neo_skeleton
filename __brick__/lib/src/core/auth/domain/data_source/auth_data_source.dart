import 'package:{{name.snakeCase()}}/src/core/_core.dart';

abstract class AuthDataSource {
  Future<AuthModel> signIn({
    required Map<String, dynamic> request,
  });

  Future<void> signOut();

  Future<AuthenticatedUser> verify();
}
