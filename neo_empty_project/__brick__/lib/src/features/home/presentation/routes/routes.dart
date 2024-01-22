import 'package:auto_route/auto_route.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/features/home/_home.dart';

List<AutoRoute> homeRoutes = [
  CustomRoute(
    transitionsBuilder: TransitionsBuilders.fadeIn,
    page: HomeRootRouter.page,
    initial: true,
    meta: const {'showBottomMenu': true},
    children: [
      CustomRoute(
        transitionsBuilder: TransitionsBuilders.fadeIn,
        page: HomeRoute.page,
        initial: true,
        meta: const {'showBottomMenu': true},
        path: HomeRoutePath.initial,
      ),
    ],
  ),
];
