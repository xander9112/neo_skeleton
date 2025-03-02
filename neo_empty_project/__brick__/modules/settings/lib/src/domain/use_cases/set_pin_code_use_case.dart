import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';
import 'package:settings/src/_src.dart';

@injectable
class SetPinCodeUseCase implements UseCase<Either<Failure, bool>, String> {
  SetPinCodeUseCase(this._storage);

  final UserSecurityStorage _storage;

  @override
  Future<Either<Failure, bool>> call(String params) async {
    await _storage.setPinCode(params);

    // _authManager.unlock();

    return const Right(true);
  }
}
