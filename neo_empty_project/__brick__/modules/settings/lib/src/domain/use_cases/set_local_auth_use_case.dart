import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:settings/settings.dart';

class SetLocalAuthUseCase implements UseCase<Either<Failure, bool>, bool> {
  SetLocalAuthUseCase(this._securityStorage);

  final UserSecurityStorage _securityStorage;

  @override
  Future<Either<Failure, bool>> call(bool params) async {
    await _securityStorage.setUseLocalAuth(params);

    return const Right(true);
  }
}
