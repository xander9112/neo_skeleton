import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:settings/src/_src.dart';

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
