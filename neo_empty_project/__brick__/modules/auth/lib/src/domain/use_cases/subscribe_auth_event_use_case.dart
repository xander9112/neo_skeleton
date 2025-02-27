import 'package:auth/src/_src.dart';
import 'package:core/core.dart';
import 'package:flutter/widgets.dart';

class SubscribeAuthEventUseCase extends UseCase<void, VoidCallback> {
  SubscribeAuthEventUseCase(this._authManager);

  final AuthManager<UserEntity> _authManager;

  @override
  Future<void> call(VoidCallback params) async {
    _authManager.addListener(params);

    return;
  }
}
