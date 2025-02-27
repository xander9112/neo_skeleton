import 'package:auth/auth.dart';
import 'package:config/config.dart';
import 'package:{{appName.snakeCase()}}/src/core/_core.dart';
import 'package:{{appName.snakeCase()}}/src/features/main/_main.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:settings/settings.dart';

Future<void> configureDependencies(FlavorStatus env) async {
  try {
    await GetIt.instance.reset();

    await ExternalDI().init(env);

    await CoreDI().init(env);

    await SettingsDI().init(env);

    await AuthDI().init(env);

    await MainDI().init(
      env,
      useMock: Mocked.isMocked,
    );
  } catch (error, stacktrace) {
    if (kDebugMode) {
      print(error);
      print(stacktrace);
    }
  }
}
