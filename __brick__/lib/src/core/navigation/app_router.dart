import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/feature/main/_main.dart';
import 'package:{{name.snakeCase()}}/src/feature/splash/splash.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute<dynamic>>[...splashRoutes, ...authRoutes, ...mainRoutes],
)
class AppRouter extends _$AppRouter {
  AppRouter({
    required super.authGuard,
    required super.updateGuard,
    required super.localAuthGuard,
  });
}
