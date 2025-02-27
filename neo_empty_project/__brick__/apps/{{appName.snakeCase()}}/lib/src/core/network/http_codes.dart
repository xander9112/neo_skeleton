import 'package:{{appName.snakeCase()}}/src/core/_core.dart';

enum HttpCodes {
  unknown(0),
  internalError(500),
  forbidden(403),
  notFound(404),
  serviceUnavailable(503);

  const HttpCodes(this.code);
  final int code;

  /* int getCode() {
    switch (this) {
      case HttpCodes.internalError:
        return 500;
      case HttpCodes.forbidden:
        return 403;
      case HttpCodes.serviceUnavailable:
        return 503;
      case HttpCodes.notFound:
        return 404;
    }
  }
*/
  String getLocalizedString() {
    switch (this) {
      case HttpCodes.internalError:
        return CoreI18n.internalError;
      case HttpCodes.forbidden:
        return CoreI18n.forbiddenError;
      case HttpCodes.serviceUnavailable:
        return CoreI18n.serviceUnavailableError;
      case HttpCodes.notFound:
        return CoreI18n.notFoundError;
      case HttpCodes.unknown:
        return CoreI18n.unknownError;
    }
  }
}
