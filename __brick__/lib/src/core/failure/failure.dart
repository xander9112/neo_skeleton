import 'package:{{name.snakeCase()}}/src/core/_core.dart';

abstract class Failure {
  Failure({required this.code, required this.message});

  final int code;
  final String message;

  String getLocalizedString();
}

class HttpFailure extends Failure {
  HttpFailure(this.httpCode, {required super.code, required super.message});

  final HttpCodes httpCode;

  @override
  String getLocalizedString() {
    return CoreI18n.unknownError;
  }
}
