import 'package:flutter/foundation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}_core/{{name.snakeCase()}}_core.dart';
import 'package:{{name.snakeCase()}}/src/features/main/_main.dart';

Future<void> configureDependencies({{#useFlavor}}EnvConfig env{{/useFlavor}}) async {
  await ExternalInjection().init({{#useFlavor}}env{{/useFlavor}});

  await CoreInjection().init({{#useFlavor}}env{{/useFlavor}});

  //feature
  await AuthInjection().init({{#useFlavor}}env{{/useFlavor}});

  await MainInjection().init(env);

  await additionalExternalInit();
}

Future<void> additionalExternalInit() async {
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getTemporaryDirectory(),
  );
}
