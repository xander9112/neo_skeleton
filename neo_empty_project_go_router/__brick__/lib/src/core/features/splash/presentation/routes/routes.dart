import 'package:go_router/go_router.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

List<RouteBase> splashRoutes = [
  GoRoute(
    pageBuilder: (context, state) => RouterHelper.noTransitionPage(
      context: context,
      state: state,
      child: const SplashPage(),
    ),
    path: SplashRoutePath.initial,
  ),
];
