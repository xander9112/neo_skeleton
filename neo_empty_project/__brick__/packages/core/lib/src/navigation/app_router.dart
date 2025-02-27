import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends RootStackRouter {
  AppRouter({
    super.navigatorKey,
    this.initialRoute = '/',
    this.routes = const [],
  });

  final String initialRoute;

  String? redirectUrl;

  @override
  final List<AutoRoute> routes;

  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  BuildContext get context => navigatorKey.currentState!.context;
}
