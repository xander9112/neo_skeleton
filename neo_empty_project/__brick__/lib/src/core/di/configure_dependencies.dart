import 'package:get_it/get_it.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/features/main/_main.dart';
import 'package:skeleton_core/skeleton_core.dart';

Future<void> configureDependencies(EnvConfig env) async {
  await GetIt.instance.reset();

  await ExternalInjection().init(env);

  await CoreInjection().init(env);

  //features
  await AuthInjection().init(env);

  await MainInjection().init(
    env,
    useMock: AuthInjection.sl<AuthManager<UserEntity>>().mocked,
  );
}
