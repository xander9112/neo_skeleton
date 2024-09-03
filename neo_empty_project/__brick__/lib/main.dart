import 'dart:async';

import 'package:{{name.snakeCase()}}/src/core/_core.dart';

void main() async {
  configureUrlStrategyApp();

  await runZonedGuarded(() async {
    await AppInitializer.init(EnvVariables.env);
  }, (error, stackTrace) {
    TerminalLogger.log(
      error.toString(),
      name: 'onFlutterError',
      stackTrace: stackTrace,
      error: error,
    );
  });
}
