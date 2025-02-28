import 'package:auth/auth.dart';
import 'package:config/config.dart';
import 'package:dependencies/dependencies.dart';
import 'package:{{appName.snakeCase()}}/src/core/_core.dart';
import 'package:flutter/foundation.dart';
import 'package:settings/settings.dart';

Future<void> configureDependencies(FlavorStatus env) async {
  try {
    await sl.reset();

    await confDependencies(environment: env.name);
  } catch (error, stacktrace) {
    if (kDebugMode) {
      print(error);
      print(stacktrace);
    }
  }
}

@InjectableInit(
  externalPackageModulesAfter: [
    ExternalModule(AuthPackageModule),
    ExternalModule(SettingsPackageModule),
  ],
)
Future<void> confDependencies({
  String? environment,
  EnvironmentFilter? environmentFilter,
}) async =>
    GetIt.instance
        .init(environment: environment, environmentFilter: environmentFilter);
