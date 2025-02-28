import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';
import 'package:settings/settings.dart';

@injectable
class GetLocalAuthUseCase implements UseCaseNoParams<bool> {
  GetLocalAuthUseCase(this._securityStorage);

  final UserSecurityStorage _securityStorage;

  @override
  Future<bool> call() async {
    return _securityStorage.getUseLocalAuth();
  }
}
