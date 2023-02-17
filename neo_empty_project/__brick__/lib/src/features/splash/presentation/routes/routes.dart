import 'package:auto_route/auto_route.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/features/splash/_splash.dart';

const List<AutoRoute> splashRoutes = <AutoRoute<dynamic>>[
  CustomRoute<void>(
    transitionsBuilder: TransitionsBuilders.fadeIn,
    path: RoutePath.initial,
    page: SplashPage,
    initial: true,
  )
];
