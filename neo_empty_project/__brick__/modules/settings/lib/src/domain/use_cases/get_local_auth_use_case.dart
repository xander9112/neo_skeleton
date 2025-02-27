import 'package:core/core.dart';
import 'package:settings/settings.dart';

class GetLocalAuthUseCase implements UseCaseNoParams<bool> {
  GetLocalAuthUseCase(this._securityStorage);

  final UserSecurityStorage _securityStorage;

  @override
  Future<bool> call() async {
    return _securityStorage.getUseLocalAuth();
  }
}
