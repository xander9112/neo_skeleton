import 'package:auto_route/auto_route.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

List<AutoRoute> authRoutes = [
  CustomRoute(
    transitionsBuilder: TransitionsBuilders.fadeIn,
    page: LoginRoute.page,
    path: RoutePath.authSignIn,
    guards: <AutoRouteGuard>[
      UpdateGuard(AuthInjection.sl<AuthManager<AuthenticatedUser>>())
    ],
  ),
  CustomRoute(
    transitionsBuilder: TransitionsBuilders.fadeIn,
    page: PinCodeRoute.page,
    path: RoutePath.pin,
    guards: <AutoRouteGuard>[
      UpdateGuard(AuthInjection.sl<AuthManager<AuthenticatedUser>>())
    ],
  ),
];
