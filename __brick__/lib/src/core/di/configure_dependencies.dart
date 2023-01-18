import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:{{name.snakeCase()}}/src/core/auth/di/auth_injection_container.dart' as di_auth;
import 'package:{{name.snakeCase()}}/src/core/di/core_injection_container.dart' as di_core;
import 'package:{{name.snakeCase()}}/src/core/di/external_injection_container.dart'
    as di_external;
import 'package:{{name.snakeCase()}}/src/core/di/navigation_injection_container.dart'
    as di_navigation;
import 'package:{{name.snakeCase()}}_core/{{name.snakeCase()}}_core.dart';

final getIt = GetIt.instance;

Future<void> configureDependencies({{#useFlavor}}EnvConfig env{{/useFlavor}}) async {
  await di_external.init();

  await di_core.init();

  await di_navigation.init();

  //feature
  await di_auth.init();

  await additionalExternalInit();
}

Future<void> additionalExternalInit() async {
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getTemporaryDirectory(),
  );
}