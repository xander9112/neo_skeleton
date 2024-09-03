import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class GetAuthUseCase implements UseCase<bool, NoParams> {
  GetAuthUseCase(this._authManager);

  final AuthManager<UserEntity> _authManager;

  @override
  Future<bool> call(NoParams params) async {
    return _authManager.isAuth;
  }
}
