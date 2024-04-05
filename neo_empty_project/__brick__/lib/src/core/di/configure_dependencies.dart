import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/features/main/_main.dart';
import 'package:{{name.snakeCase()}}_core/{{name.snakeCase()}}_core.dart';

Future<void> configureDependencies({{#useFlavor}}EnvConfig env{{/useFlavor}}) async {
  await GetIt.instance.reset();

  await ExternalInjection().init({{#useFlavor}}env{{/useFlavor}});

  await CoreInjection().init({{#useFlavor}}env{{/useFlavor}});

  //features
  await AuthInjection().init({{#useFlavor}}env{{/useFlavor}});

  await MainInjection().init({{#useFlavor}}env,{{/useFlavor}} useMock: true);

  await additionalExternalInit();
}

Future<void> additionalExternalInit() async {
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getTemporaryDirectory(),
  );
}
