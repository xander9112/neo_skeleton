import 'package:auth/src/_src.dart';
import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';

@injectable
class UnBlockUseCase implements UseCaseNoParams<void> {
  UnBlockUseCase(this._authManager);

  final AuthManager<UserEntity> _authManager;

  @override
  Future<void> call() async {
    return _authManager.unblock();
  }
}
