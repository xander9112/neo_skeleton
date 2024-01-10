import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/features/main/_main.dart';

class AppRouter {
  AppRouter({this.routerHelper})
      : config = GoRouter(
          navigatorKey: AppGlobalKeys.rootNavigatorKey,
          initialLocation: routerHelper?.initialLocation,
          // debugLogDiagnostics: true,
          redirect: routerHelper != null
              ? (context, state) => routerHelper.redirect(context, state.uri)
              : null,
          refreshListenable: routerHelper?.refreshListenable,
          routes: [
            GoRoute(
              path: '/',
              redirect: (context, state) {
                if (Uri.base.path == '/') {
                  return routerHelper?.homeLocation;
                }

                return Uri.base.path;
              },
            ),
            ...authRoutes,
            ...mainRoutes,
          ],
        );

  late final RouterConfig<Object> config;

  final RouterHelper? routerHelper;

  BuildContext get context =>
      AppGlobalKeys.rootNavigatorKey.currentState!.context;
}
