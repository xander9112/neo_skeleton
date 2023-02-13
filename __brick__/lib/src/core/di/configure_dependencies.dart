import 'package:flutter/foundation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}_core/{{name.snakeCase()}}_core.dart';
import 'package:{{name.snakeCase()}}/src/features/main/_main.dart';

Future<void> configureDependencies(EnvConfig env) async {
  await ExternalInjection().init(env);

  await CoreInjection().init(env);

  //feature
  await AuthInjection().init(env);
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
