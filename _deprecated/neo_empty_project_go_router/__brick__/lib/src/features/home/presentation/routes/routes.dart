import 'package:go_router/go_router.dart';
import 'package:{{name.snakeCase()}}/src/features/home/_home.dart';

List<RouteBase> homeRoutes = [
  GoRoute(
    path: HomeRoutePath.initial,
    builder: (context, state) => const HomePage(),
  ),
];
