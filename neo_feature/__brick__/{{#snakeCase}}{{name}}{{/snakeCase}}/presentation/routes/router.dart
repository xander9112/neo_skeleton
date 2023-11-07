import 'package:{{projectName.snakeCase()}}/src/core/_core.dart';
import '../../_{{name.snakeCase()}}.dart';

class {{name.pascalCase()}}Router extends AppRouter {
  {{name.pascalCase()}}Router(super.router);

  void goTo{{name.pascalCase()}}() {
    pushNamed({{name.pascalCase()}}RoutePath.{{name.camelCase()}});
  }
}
