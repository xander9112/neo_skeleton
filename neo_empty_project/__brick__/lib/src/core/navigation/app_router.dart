import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/features/home/_home.dart';
import 'package:{{name.snakeCase()}}/src/features/main/_main.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  AppRouter({super.navigatorKey});

  @override
  List<AutoRoute> get routes => [
        ...authRoutes,
        ...mainRoutes,
      ];

  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  BuildContext get context => navigatorKey.currentState!.context;
}
