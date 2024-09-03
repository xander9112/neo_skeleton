import 'package:flutter/widgets.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class SubscribeAuthEventUseCase extends UseCase<void, VoidCallback> {
  SubscribeAuthEventUseCase(this._authManager);

  final AuthManager<UserEntity> _authManager;

  @override
  Future<void> call(VoidCallback params) async {
    _authManager.addListener(params);

    return;
  }
}
