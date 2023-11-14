import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class GetGlobalAuthSettingsUseCase
    extends UseCase<AuthManagerSettings, NoParams> {
  GetGlobalAuthSettingsUseCase(this._authManager);

  final AuthManager<AuthenticatedUser> _authManager;

  @override
  Future<AuthManagerSettings> call(NoParams params) async {
    return _authManager.settings;
  }
}
