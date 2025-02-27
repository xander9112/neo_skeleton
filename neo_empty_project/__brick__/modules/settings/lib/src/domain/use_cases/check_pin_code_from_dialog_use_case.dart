import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:settings/src/_src.dart';

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
