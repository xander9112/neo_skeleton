import 'dart:io';

import 'package:dio/dio.dart';

extension DioExceptionExt on DioException {
  bool get isConnectionException =>
      type == DioExceptionType.unknown && error is SocketException;
}
