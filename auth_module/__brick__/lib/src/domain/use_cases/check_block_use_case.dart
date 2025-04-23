import 'package:auth/src/_src.dart';
import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';

@injectable
class CheckBlockUseCase implements UseCaseNoParams<Duration> {
  CheckBlockUseCase(this._authManager);

  final AuthManager<UserEntity> _authManager;

  @override
  Future<Duration> call() async {
    return _authManager.getBlockTime();
  }
}
