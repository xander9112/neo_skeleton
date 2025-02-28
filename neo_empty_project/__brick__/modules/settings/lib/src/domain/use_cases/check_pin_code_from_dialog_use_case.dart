import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';
import 'package:settings/src/_src.dart';

@injectable
class CheckPinCodeFromDialogUseCase
    implements UseCase<Either<Failure, bool>, String> {
  CheckPinCodeFromDialogUseCase(this._storage);

  final UserSecurityStorage _storage;

  @override
  Future<Either<Failure, bool>> call(String params) async {
    final result = await _storage.comparePinCode(params);

    return Right(result);
  }
}
