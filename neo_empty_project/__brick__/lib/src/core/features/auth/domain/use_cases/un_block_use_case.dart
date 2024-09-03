import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class UnBlockUseCase implements UseCase<void, NoParams> {
  UnBlockUseCase(this._authManager);

  final AuthManager<UserEntity> _authManager;

  @override
  Future<void> call(NoParams params) async {
    return _authManager.unblock();
  }
}
