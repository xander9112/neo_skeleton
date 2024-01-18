// ignore_for_file: avoid_dynamic_calls

import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';

class DioUnauthorizedError extends DioException {
  DioUnauthorizedError({
    required super.requestOptions,
    required super.type,
    super.response,
    super.error,
  });

  static const int code = 401;

  String get errorMessage => 'NetworkExceptions.Unauthenticated';

  // response?.data?['message'];

  @override
  String toString() {
    return errorMessage;
  }
}

class DioForbiddenError extends DioException {
  DioForbiddenError({
    required super.requestOptions,
    required super.type,
    super.response,
    super.error,
  });

  static const int code = 403;

  String get errorMessage {
    if (response?.data is String) {
      return response?.data as String;
    }

    return response?.data?['message'] as String;
  }

  @override
  String toString() {
    return errorMessage;
  }
}

class DioTooManyRequestsError extends DioException {
  DioTooManyRequestsError({
    required super.requestOptions,
    required super.type,
    super.response,
    super.error,
  });

  static const int code = 429;

  String get errorMessage {
    if (response?.data is String) {
      return response?.data as String;
    }

    return response?.data?['message'] as String;
  }

  @override
  String toString() {
    return errorMessage;
  }
}

class DioMethodNotAllowedError extends DioException {
  DioMethodNotAllowedError({
    required super.requestOptions,
    required super.type,
    super.response,
    super.error,
  });

  static const int code = 405;

  String get errorMessage {
    if (response?.data is String) {
      return response?.data as String;
    }

    return response?.data?['message'] as String;
  }

  @override
  String toString() {
    return errorMessage;
  }
}

class DioBadRequestError extends DioException {
  DioBadRequestError({
    required super.requestOptions,
    required super.type,
    super.response,
    super.error,
  });

  static const int code = 400;

  String get errorMessage {
    String? message = 'NetworkExceptions.badRequest';

    if (response?.data is String) {
      if (response?.data.toString().isNotEmpty ?? false) {
        message = response?.data as String?;
      }
    } else {
      message = response?.data?['message'] as String?;
    }

    return message ?? '';
  }

  @override
  String toString() {
    return errorMessage;
  }
}

class DioUnprocessableEntityError extends DioException {
  DioUnprocessableEntityError({
    required super.requestOptions,
    required super.type,
    super.response,
    super.error,
  });

  static const int code = 422;

  String get errorMessage {
    String? message = 'NetworkExceptions.unprocessableEntity';

    if (response?.data is String) {
      if (response?.data.toString().isNotEmpty ?? false) {
        message = response?.data as String?;
      }
    } else {
      if (response?.data?['message'] != null) {
        message = response?.data?['message'] as String?;
      } else {
        final error = response?.data?['error'] as Map<String, dynamic>;

        if (error.values.first is List) {
          message = (error.values.first as List<dynamic>).first as String?;
        } else {
          message = error.values.first.toString();
        }
      }
    }

    return message ?? '';
  }

  @override
  String toString() {
    return errorMessage;
  }
}

class DioAuthenticationTimeoutError extends DioException {
  DioAuthenticationTimeoutError({
    required super.requestOptions,
    required super.type,
    super.response,
    super.error,
  });

  static const int code = 419;

  String get errorMessage => 'NetworkExceptions.unprocessableEntity';

  @override
  String toString() {
    return errorMessage;
  }
}

class DioNotFoundError extends DioException {
  DioNotFoundError({
    required super.requestOptions,
    required super.type,
    super.response,
    super.error,
  });

  static const int code = 404;

  String get errorMessage {
    String? message = 'NetworkExceptions.notFound';

    if (response?.data is String) {
      if (response?.data.toString().isNotEmpty ?? false) {
        message = response?.data as String?;
      }
    } else {
      message = response?.data?['message'] as String?;
    }

    return message ?? '';
  }

  @override
  String toString() {
    return errorMessage;
  }
}

class DioInternalServerError extends DioException {
  DioInternalServerError({
    required super.requestOptions,
    required super.type,
    super.response,
    super.error,
  });

  static const int code = 500;

  String get errorMessage {
    const message = 'NetworkExceptions.internalServerError';
    log(response?.data as String);
    // if (response?.data is String) {
    //   if (response?.data.toString().isNotEmpty ?? false) {
    //     message = response?.data;
    //   }
    // } else {
    //   message = response?.data?['message'];
    // }

    return message;
  }

  @override
  String toString() {
    return errorMessage;
  }
}

class DioBadGatewayError extends DioException {
  DioBadGatewayError({
    required super.requestOptions,
    required super.type,
    super.response,
    super.error,
  });

  static const int code = 502;

  String get errorMessage {
    const message = 'NetworkExceptions.badGateway';
    log(response?.data as String);
    // if (response?.data is String) {
    //   if (response?.data.toString().isNotEmpty ?? false) {
    //     message = response?.data;
    //   }
    // } else {
    //   message = response?.data?['message'];
    // }

    return message;
  }

  @override
  String toString() {
    return errorMessage;
  }
}

class DioGatewayTimeoutError extends DioException {
  DioGatewayTimeoutError({
    required super.requestOptions,
    required super.type,
    super.response,
    super.error,
  });

  static const int code = 504;

  String get errorMessage {
    const message = 'NetworkExceptions.badGateway';
    log(response?.data as String);
    // if (response?.data is String) {
    //   if (response?.data.toString().isNotEmpty ?? false) {
    //     message = response?.data;
    //   }
    // } else {
    //   message = response?.data?['message'];
    // }

    return message;
  }

  @override
  String toString() {
    return errorMessage;
  }
}

class DioServiceUnavailableError extends DioException {
  DioServiceUnavailableError({
    required super.requestOptions,
    required super.type,
    super.response,
    super.error,
  });

  static const int code = 503;

  String get errorMessage {
    const message = 'NetworkExceptions.serviceUnavailable';

    // if (response?.data is String) {
    //   if (response?.data.toString().isNotEmpty ?? false) {
    //     message = response?.data;
    //   }
    // } else {
    //   message = response?.data?['message'];
    // }

    return message;
  }

  @override
  String toString() {
    return errorMessage;
  }
}

class DioNetworkError extends DioException {
  DioNetworkError({
    required super.requestOptions,
    required super.type,
    super.response,
    super.error,
  });

  @override
  String toString() {
    if ((error as SocketException?)?.osError?.errorCode == 103) {
      return 'networkErrors.NetworkState.disconnected';
    }

    return 'NetworkExceptions.badGateway';
  }
}

class DioConnectTimeoutError extends DioException {
  DioConnectTimeoutError({
    required super.requestOptions,
    required super.type,
    super.response,
    super.error,
  });

  @override
  String toString() {
    return 'networkErrors.NetworkState.disconnected';
  }
}

class DioCancelError extends DioException {
  DioCancelError({
    required super.requestOptions,
    required super.type,
    super.response,
    super.error,
  });

  String get errorMessage {
    const message = '';

    return message;
  }

  @override
  String toString() {
    return 'cancel.$type';
  }
}
