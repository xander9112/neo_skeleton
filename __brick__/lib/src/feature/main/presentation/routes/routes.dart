import 'package:auto_route/auto_route.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/feature/main/_main.dart';
import 'package:{{name.snakeCase()}}/src/feature/settings/_settings.dart';
import 'package:{{name.snakeCase()}}/src/feature/home/_home.dart';

const List<AutoRoute> mainRoutes = <AutoRoute<dynamic>>[
  CustomRoute<void>(
    transitionsBuilder: TransitionsBuilders.fadeIn,
    path: RoutePath.main,
    guards: [UpdateGuard, AuthGuard, LocalAuthGuard],
    page: MainPage,
    children: <AutoRoute>[
      ...homeRoutes,
      ...settingsRoutes,
    ],
  )
];
