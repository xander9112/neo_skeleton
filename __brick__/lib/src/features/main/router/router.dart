import 'package:auto_route/auto_route.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/config/config.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/features/features.dart';

const List<AutoRoute> mainRouter = <AutoRoute<dynamic>>[
  RedirectRoute(path: '', redirectTo: RouterPath.home),
  AutoRoute<void>(
    page: HomePage,
    path: RouterPath.home,
  ),
  AutoRoute<void>(
    page: ProfilePage,
    path: RouterPath.profile,
  ),
];
