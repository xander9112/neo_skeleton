import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class CheckBlockUseCase implements UseCase<Duration, NoParams> {
  CheckBlockUseCase(this._authManager);

  final AuthManager<AuthenticatedUser> _authManager;

  @override
  Future<Duration> call(NoParams params) async {
    return _authManager.getBlockTime();
  }
}
