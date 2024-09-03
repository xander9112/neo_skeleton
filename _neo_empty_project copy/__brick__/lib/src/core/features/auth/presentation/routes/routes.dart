import 'package:auto_route/auto_route.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

List<AutoRoute> authRoutes = [
  CustomRoute(
    transitionsBuilder: TransitionsBuilders.fadeIn,
    page: AuthRoute.page,
    path: AuthRoutePath.initial,
    children: [
      AutoRoute(
        page: LoginRoute.page,
        initial: true,
        path: AuthRoutePath.signIn,
      ),
      AutoRoute(
        page: PinCodeRoute.page,
        path: AuthRoutePath.pinCode,
      ),
      AutoRoute(
        page: BlockRoute.page,
        path: AuthRoutePath.blocked,
      ),
    ],
  ),
];
