import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/features/home/_home.dart';
import 'package:{{name.snakeCase()}}/src/features/main/_main.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends RootStackRouter {
  AppRouter({super.navigatorKey});

  String initialRoute = '/';

  @override
  List<AutoRoute> get routes => [
        CustomRoute<void>(
          transitionsBuilder: TransitionsBuilders.fadeIn,
          page: UpdateRoute.page,
          path: SettingsRoutePath.update,
        ),
        ...verifyRoutes(prefix: '/auth/'),
        ...mainRoutes(),
        RedirectRoute(
          path: '*',
          redirectTo: '/',
        ),
      ];

  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  BuildContext get context => navigatorKey.currentState!.context;
}
