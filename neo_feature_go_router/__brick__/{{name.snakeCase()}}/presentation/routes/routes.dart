import 'package:go_router/go_router.dart';
import '../../_{{name.snakeCase()}}.dart';

List<RouteBase> {{name.camelCase()}}Routes = [
  GoRoute(
    builder: (context, state) => const {{name.pascalCase()}}Page(),
    path: {{name.pascalCase()}}RoutePath.initial,
  ),
];
