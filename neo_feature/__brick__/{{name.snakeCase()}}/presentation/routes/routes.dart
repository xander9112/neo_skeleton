import 'package:auto_route/auto_route.dart';
import '../pages/_pages.dart';

const List<AutoRoute> {{name.camelCase()}}Routes = <AutoRoute<dynamic>>[
  AutoRoute<void>(
    page: {{name.pascalCase()}}Page,
    path: '{{name.camelCase()}}',
  ),  
];