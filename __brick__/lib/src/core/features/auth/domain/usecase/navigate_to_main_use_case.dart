import 'dart:async';

import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class NavigateToMainUseCase implements UseCase<void, void Function(bool)?> {
  NavigateToMainUseCase(this._router);

  final AuthRouter _router;

  @override
  Future<void> call(
    void Function(bool success)? params,
  ) async {
    if (params != null) {
      params.call(true);
    } else {
      unawaited(_router.replaceNamed(RoutePath.main));
      _router.removeLast();
    }
  }
}
