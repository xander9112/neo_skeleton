import 'package:auto_route/auto_route.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/features/home/_home.dart';

List<AutoRoute> mainRoutes = [
  CustomRoute(
    transitionsBuilder: TransitionsBuilders.fadeIn,
    initial: true,
    path: '/',
    page: MainRoute.page,
    guards: [
      AuthGuard(AuthInjection.sl<AuthManager<AuthenticatedUser>>()),
      BlockAuthGuard(AuthInjection.sl<AuthManager<AuthenticatedUser>>()),
      LocalAuthGuard(AuthInjection.sl<AuthManager<AuthenticatedUser>>()),
    ],
    children: [
      ...homeRoutes,
      ...settingsRoutes(),
    ],
  ),
];
