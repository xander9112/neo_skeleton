import 'package:auth/src/_src.dart';
import 'package:core/core.dart';

class GetAuthUseCase implements UseCaseNoParams<bool> {
  GetAuthUseCase(this._authManager);

  final AuthManager<UserEntity> _authManager;

  @override
  Future<bool> call() async {
    return _authManager.isAuth;
  }
}
