import 'package:get_it/get_it.dart';
import 'package:{{name.snakeCase()}}/src/core/di/core_injection_container.dart' as di_core;
import 'package:{{name.snakeCase()}}/src/core/di/navigation_injection_container.dart'
    as di_navigation;
import 'package:{{name.snakeCase()}}/src/core/features/auth/di/auth_injection_container.dart' as di_auth;
import 'package:{{name.snakeCase()}}_core/{{name.snakeCase()}}_core.dart';

final getIt = GetIt.instance;

Future<void> configureDependencies(EnvConfig env) async {
  await di_core.init();
  await di_navigation.init();

  //feature
  await di_auth.init();
}
