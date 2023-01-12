import 'package:get_it/get_it.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/core/auth/di/auth_injection_container.dart'
    as di_auth;
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/core/di/core_injection_container.dart'
    as di_core;
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/core/di/navigation_injection_container.dart'
    as di_navigation;

final getIt = GetIt.instance;

Future<void> configureDependencies() async {
  await di_core.init();
  await di_navigation.init();

  //feature
  await di_auth.init();
}
