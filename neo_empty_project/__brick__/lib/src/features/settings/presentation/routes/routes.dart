import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/features/settings/_settings.dart';

const List<AutoRoute> settingsRoutes = <AutoRoute<dynamic>>[
  AutoRoute<void>(
    page: EmptyRouterPage,
    path: RoutePath.settings,
    name: 'SettingsRootRouter',
    children: [
      AutoRoute<void>(
        page: SettingsPage,
        path: '',
        initial: true,
      ),
    ],
  ),
];
