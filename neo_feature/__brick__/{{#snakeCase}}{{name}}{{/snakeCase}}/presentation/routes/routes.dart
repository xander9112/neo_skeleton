import 'package:auto_route/auto_route.dart';
import 'package:{{projectName.snakeCase()}}/src/core/_core.dart';
import '../../_{{name.snakeCase()}}.dart';

List<AutoRoute> {{name.camelCase()}}Routes = [
  AutoRoute(
    page: {{name.pascalCase()}}Route.page,
    path: {{name.pascalCase()}}RoutePath.{{name.camelCase()}},    
  ),  
];
