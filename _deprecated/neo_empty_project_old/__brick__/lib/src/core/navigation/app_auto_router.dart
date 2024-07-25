import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/features/home/_home.dart';
import 'package:{{name.snakeCase()}}/src/features/main/_main.dart';
import 'package:{{name.snakeCase()}}/src/features/settings/_settings.dart';
import 'package:{{name.snakeCase()}}/src/features/splash/_splash.dart';

part 'app_auto_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppAutoRouter extends _$AppAutoRouter {
  @override
  List<AutoRoute> get routes => [...splashRoutes, ...authRoutes, ...mainRoutes];
}
