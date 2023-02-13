import 'package:flutter/foundation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:{{name.snakeCase()}}/src/core/di/_di.dart';
import 'package:{{name.snakeCase()}}_core/{{name.snakeCase()}}_core.dart';

Future<void> configureDependencies(EnvConfig env) async {
  await ExternalInjection().init(env);

  await CoreInjection().init(env);

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
