import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/features/home/_home.dart';
import 'package:{{name.snakeCase()}}/src/features/main/_main.dart';
import 'package:{{name.snakeCase()}}/src/features/settings/_settings.dart';
import 'package:{{name.snakeCase()}}/src/features/splash/splash.dart';
import 'package:flutter/material.dart';

part 'app_auto_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute<dynamic>>[...splashRoutes, ...authRoutes, ...mainRoutes],
)
class AppAutoRouter extends _$AppAutoRouter {
  AppAutoRouter({
    required super.authGuard,
    required super.updateGuard,
    required super.localAuthGuard,
  });
}
