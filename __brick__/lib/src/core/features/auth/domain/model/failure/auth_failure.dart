import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class AuthFailure extends Failure {
  AuthFailure({
    required super.code,
    required super.message,
  });

  String getLocalizedString() {
    switch (this) {
      case 500:
        return CoreI18n.internalError;
      case 403:
        return AuthI18n.userNotFound;
      case 404:
        return AuthI18n.userNotFound;
      case 503:
        return CoreI18n.serviceUnavailableError;
      case 422:
        return AuthI18n.minimumPassword;
      case 1:
        return AuthI18n.checkInternetConnection;
      case 0:
        return CoreI18n.unknownError;
    }
  }
}
