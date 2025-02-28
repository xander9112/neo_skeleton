import 'package:core/core.dart';
import 'package:{{projectName.snakeCase()}}/src/core/_core.dart';

class {{name.pascalCase()}}Failure extends Failure {
  {{name.pascalCase()}}Failure({
    required super.code,
    required super.message,
  });

  @override
  String getLocalizedString() {
    switch (code) {
      case 500:
        return CoreI18n.internalError;
      case 404:
        return {{name.pascalCase()}}I18n.{{name.camelCase()}}NotFound;
      default:
        return CoreI18n.unknownError;
    }
  }
}
