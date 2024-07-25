import 'package:dio/dio.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

abstract class Failure {
  Failure({required this.code, required this.message});

  final int code;
  final String message;

  String getLocalizedString();
}

class LocalFailure extends Failure {
  LocalFailure({required super.code, required super.message});

  @override
  String getLocalizedString() {
    return CoreI18n.unknownError;
  }
}

class HttpFailure extends Failure {
  HttpFailure(this.httpCode, {required super.code, required super.message});

  final HttpCodes httpCode;

  @override
  String getLocalizedString() {
    return CoreI18n.unknownError;
  }
}

extension DioExceptionLog on DioException {
  String get errorMessage {
    String msg =
        'Type: $type, Message: ${message ?? error}, url: ${requestOptions.uri}';

    if (response?.data != null) {
      msg += ', ${response!.data}';
    }

    return msg;
  }

  String get errorResponseMessage {
    try {
      // ignore: avoid_dynamic_calls
      return response?.data['message'] as String;
    } catch (_) {
      return errorMessage;
    }
  }

  int get errorResponseCode => response?.statusCode ?? -1;
}
