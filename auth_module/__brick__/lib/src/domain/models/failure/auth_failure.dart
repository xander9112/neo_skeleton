import 'package:core/core.dart';

class AuthFailure extends Failure {
  AuthFailure({
    required super.code,
    required super.message,
  });

  @override
  String getLocalizedString() {
    switch (code) {
      case 500:
        return 'internalError';
      case 403:
        return 'userNotFound';
      case 404:
        return 'userNotFound';
      case 503:
        return 'serviceUnavailableError';
      case 422:
        return 'minimumPassword';
      case 1:
        return 'checkInternetConnection';
      default:
        return 'unknownError';
    }
  }
}
