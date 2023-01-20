import 'package:auto_route/auto_route.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/feature/settings/_settings.dart';

const List<AutoRoute> mainRoutes = <AutoRoute<dynamic>>[
  AutoRoute<void>(
    path: RoutePath.settings,    
    page: SettingsPage,
  )
];
