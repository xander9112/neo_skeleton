import 'package:go_router/go_router.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/features/splash/_splash.dart';

List<RouteBase> splashRoutes = [
  GoRoute(
    pageBuilder: (context, state) => RouterHelper.noTransitionPage(
      context: context,
      state: state,
      child: const SplashPage(),
    ),
    path: RoutePath.initial,
  ),
];
