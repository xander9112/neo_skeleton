import 'package:auto_route/auto_route.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/features/main/_main.dart';
import 'package:{{name.snakeCase()}}/src/features/settings/_settings.dart';
import 'package:{{name.snakeCase()}}/src/features/home/_home.dart';

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
