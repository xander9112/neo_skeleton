import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class HomeFailure extends Failure {
  HomeFailure({
    required super.code,
    required super.message,
  });

  @override
  String getLocalizedString() {
    switch (code) {
      case 500:
        return CoreI18n.internalError;
      default:
        return CoreI18n.unknownError;
    }
  }
}
