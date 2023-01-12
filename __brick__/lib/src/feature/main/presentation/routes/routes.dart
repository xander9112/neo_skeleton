import 'package:auto_route/auto_route.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/core/_core.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/feature/main/_main.dart';

const List<AutoRoute> mainRoutes = <AutoRoute<dynamic>>[
  CustomRoute<void>(
    transitionsBuilder: TransitionsBuilders.fadeIn,
    path: RoutePath.main,
    guards: [UpdateGuard, AuthGuard, LocalAuthGuard],
    page: MainPage,
  )
];
