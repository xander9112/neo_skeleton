import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/features/main/_main.dart';
import 'package:{{name.snakeCase()}}/src/features/splash/_splash.dart';

class AppAutoRouter {
  AppAutoRouter({this.routerHelper})
      : config = GoRouter(
          navigatorKey: rootNavigatorKey,
          initialLocation: routerHelper?.initialLocation,
          redirect: routerHelper != null
              ? (context, state) => routerHelper.redirect(context, state.uri)
              : null,
          refreshListenable: routerHelper?.refreshListenable,
          routes: [
            ...splashRoutes,
            ...authRoutes,
            ...mainRoutes,
          ],
        );

  late final RouterConfig<Object> config;

  final RouterHelper? routerHelper;

  BuildContext get context => rootNavigatorKey.currentState!.context;
}
