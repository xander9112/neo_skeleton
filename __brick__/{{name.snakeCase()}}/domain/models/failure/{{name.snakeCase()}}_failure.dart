import 'package:jnp/src/core/_core.dart';
import '../../../_profile.dart';

class {{name.pascalCase()}}Failure extends Failure {
  {{name.CamelCase()}}Failure({
    required super.code,
    required super.message,
  });

  @override
  String getLocalizedString() {
    switch (code) {
      case 500:
        return CoreI18n.internalError;
      case 404:
        return {{name.pascalCase()}}I18n.{{name.snakeCase()}}NotFound;
      default:
        return CoreI18n.unknownError;
    }
  }
}
