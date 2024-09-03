import 'package:collection/collection.dart';
import 'package:{{name.snakeCase()}}_core/{{name.snakeCase()}}_core.dart';

class EnvVariables {
  static bool get isDebug {
    return const bool.fromEnvironment('DEBUG');
  }

  static EnvConfig get env {
    return EnvConfig.values.firstWhereOrNull(
          (EnvConfig env) => env.name == const String.fromEnvironment('FLAVOR'),
        ) ??
        EnvConfig.prod;
  }

  static Uri get apiUrl {
    return Uri.parse(const String.fromEnvironment('API_URL'));
  }

  static Duration get blockSeconds {
    return const Duration(
      seconds: int.fromEnvironment('BLOCK_SECONDS', defaultValue: 60),
    );
  }
}
