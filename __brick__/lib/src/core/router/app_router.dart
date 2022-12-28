import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/features/features.dart';

import '../../core/core.dart';
import 'router_path.dart';
import 'transitions.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute<dynamic>>[
    CustomRoute<void>(
      transitionsBuilder: fadeTransition,
      page: SplashPage,
      path: RouterPath.initial,
      initial: true,
    ),
    CustomRoute<void>(
      transitionsBuilder: fadeTransition,
      page: AuthPage,
      path: RouterPath.auth,
    ),
    CustomRoute<void>(
      transitionsBuilder: fadeTransition,
      path: RouterPath.main,
      page: MainPage,
      children: mainRouter,
    ),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
