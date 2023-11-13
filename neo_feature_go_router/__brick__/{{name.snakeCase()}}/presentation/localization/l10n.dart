import 'package:intl/intl.dart';

class {{name.pascalCase()}}I18n {
  static String get title => Intl.message(
        '{{name.snakeCase()}} title',
        desc: 'Description for {{name.pascalCase()}} title',
        name: '{{name.pascalCase()}}I18n_title',
      );

  static String get {{name.camelCase()}}NotFound => Intl.message(
        '{{name.pascalCase()}} not found',
        desc: 'Description for {{name.pascalCase()}} not found',
        name: '{{name.pascalCase()}}I18n_{{name.camelCase()}}NotFound',
      );
}
