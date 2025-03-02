import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';
import 'package:settings/settings.dart';

@injectable
class SetLocalAuthUseCase implements UseCase<Either<Failure, bool>, bool> {
  SetLocalAuthUseCase(this._securityStorage);

  final UserSecurityStorage _securityStorage;

  @override
  Future<Either<Failure, bool>> call(bool params) async {
    await _securityStorage.setUseLocalAuth(params);

    return const Right(true);
  }
}
