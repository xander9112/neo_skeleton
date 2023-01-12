import 'package:auto_route/auto_route.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/core/_core.dart';

const List<AutoRoute> authRoutes = <AutoRoute<dynamic>>[
  CustomRoute<void>(
    transitionsBuilder: TransitionsBuilders.fadeIn,
    page: LoginPage,
    path: RoutePath.authSignIn,
    guards: <Type>[UpdateGuard],
  ),
  /* CustomRoute<void>(
    transitionsBuilder: TransitionsBuilders.fadeIn,
    page: PinCodeCreatePage,
    path: RoutePath.pinNew,
    guards: <Type>[UpdateGuard],
  ),
  CustomRoute<void>(
    transitionsBuilder: TransitionsBuilders.fadeIn,
    page: PinCodeEnterPage,
    path: RoutePath.pinEnter,
    guards: <Type>[UpdateGuard],
  ),*/
];
