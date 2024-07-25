import 'package:go_router/go_router.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/features/home/_home.dart';
import 'package:{{name.snakeCase()}}/src/features/main/_main.dart';

List<RouteBase> mainRoutes = [
  StatefulShellRoute.indexedStack(
    builder: (context, state, navigationShell) => MainPage(
      navigationShell: navigationShell,
    ),
    branches: [
      StatefulShellBranch(
        routes: homeRoutes,
      ),
      StatefulShellBranch(
        routes: settingsRoutes,
      ),
    ],
  ),
];
