import 'package:auto_route/auto_route.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/features/settings/_settings.dart';
import 'package:{{name.snakeCase()}}/src/features/home/_home.dart';

List<AutoRoute> mainRoutes = [
  CustomRoute(
    transitionsBuilder: TransitionsBuilders.fadeIn,
    path: RoutePath.main,
    guards: [
      UpdateGuard(AuthInjection.sl<AuthManager<AuthenticatedUser>>()),
      AuthGuard(AuthInjection.sl<AuthManager<AuthenticatedUser>>()),
      LocalAuthGuard(AuthInjection.sl<AuthManager<AuthenticatedUser>>())
    ],
    page: MainRoute.page,
    children: <AutoRoute>[
      ...homeRoutes,
      ...settingsRoutes,
    ],
  )
];
