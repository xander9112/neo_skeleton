import 'package:dio/dio.dart';

class HttpException extends DioException {
  HttpException({required super.requestOptions});
}
