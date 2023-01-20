import 'package:auto_route/auto_route.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/feature/settings/_settings.dart';

const List<AutoRoute> homeRoutes = <AutoRoute<dynamic>>[
  AutoRoute<void>(
    path: RoutePath.home,    
    page: HomePage,
  )
];
