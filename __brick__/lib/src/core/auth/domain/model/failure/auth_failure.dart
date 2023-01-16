import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class AuthFailure extends Failure {
  AuthFailure({
    required super.code,
    required super.message,
    required this.reason,
  });

  final AuthFailureReason reason;
}

enum AuthFailureReason {
  unknown(0),
  checkInternetConnection(1),
  internalError(500),
  forbidden(403),
  notFound(404),
  unprocessableContent(422),
  serviceUnavailable(503);

  const AuthFailureReason(this.code);
  final int code;

  String getLocalizedString() {
    switch (this) {
      case AuthFailureReason.unknown:
        return CoreI18n.unknownError;
      case AuthFailureReason.internalError:
        return CoreI18n.internalError;
      case AuthFailureReason.forbidden:
        return AuthI18n.userNotFound;
      case AuthFailureReason.notFound:
        return AuthI18n.userNotFound;
      case AuthFailureReason.serviceUnavailable:
        return CoreI18n.serviceUnavailableError;
      case AuthFailureReason.unprocessableContent:
        return AuthI18n.minimumPassword;
      case AuthFailureReason.checkInternetConnection:
        return AuthI18n.checkInternetConnection;
    }
  }
}
