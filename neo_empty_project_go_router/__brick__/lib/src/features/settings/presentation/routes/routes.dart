import 'package:auto_route/auto_route.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

List<AutoRoute> settingsRoutes = [
  AutoRoute(
    page: SettingsRouter.page,
    path: RoutePath.settings,
    children: [
      AutoRoute(
        page: SettingsRoute.page,
        path: '',
        initial: true,
      ),
    ],
  ),
];
