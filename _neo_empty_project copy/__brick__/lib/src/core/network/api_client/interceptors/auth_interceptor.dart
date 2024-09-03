import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}_core/{{name.snakeCase()}}_core.dart';

class AuthInterceptor extends QueuedInterceptorsWrapper {
  AuthInterceptor(SecureStorageService storage, Dio dio)
      : _storage = storage,
        _dio = dio;

  final SecureStorageService _storage;

  final Dio _dio;

  CancelToken? cancelToken;

  Future<String> getToken() async {
    if (await _storage.hasToken) {
      try {
        final token = await _storage.getToken() ?? '';
        final remainingDate = AppJwtDecoder.getRemainingTime(token);

        if (remainingDate.inSeconds < 60) {
          final success = await refreshToken();

          if (success) {
            return await _storage.getToken() ?? '';
          } else {
            throw Exception('Token not found');
          }
        } else {
          return token;
        }
      } catch (e) {
        rethrow;
      }
    } else {
      throw Exception('Token not found');
    }
  }

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final hasToken = await _storage.hasToken;

    options.headers.addAll(<String, String>{
      'x-device-id': (await AppInfo.getDeviceInfo()).deviceId,
    });

    if (hasToken) {
      try {
        var token = await _storage.getToken() ?? '';

        final remainingDate = AppJwtDecoder.getRemainingTime(token);

        if (remainingDate.inSeconds < 60) {
          final result = await refreshToken();

          if (result) {
            token = await _storage.getToken() ?? '';
          } else {
            _cancelRequest();

            return handler.reject(
              DioException(
                requestOptions: options,
                response: Response<dynamic>(
                  requestOptions: options,
                  statusCode: 401,
                ),
              ),
            );
          }
        }

        options.headers.addAll(<String, String>{
          HttpHeaders.authorizationHeader: 'Bearer $token',
        });
      } catch (_) {
        return handler.next(options);
      }
    }

    return handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 401) {
      _cancelRequest();
    }

    return super.onError(err, handler);
  }

  void _cancelRequest() {
    cancelToken?.cancel();

    AuthInjection.sl<AuthManager<AuthenticatedUser>>().signOut(remote: false);
  }

  Future<bool> refreshToken() async {
    final hasRefreshToken = await _storage.hasRefreshToken;

    if (hasRefreshToken) {
      final refreshDio = Dio(_dio.options);

      if (kDebugMode) {
        // refreshDio.interceptors.add(DioNetworkLogger());
      }

      try {
        final refreshToken = await _storage.getRefreshToken() ?? '';

        final response = await refreshDio.post<dynamic>(
          ApiMethods.authTokenRefresh,
          data: jsonEncode({'refreshToken': refreshToken}),
        );
        if (kDebugMode) {
          // ignore: avoid_dynamic_calls
          print('new token = ${response.data['token']}');
          // ignore: avoid_dynamic_calls
          print('new refreshToken = ${response.data['refreshToken']}');
        }

        // ignore: avoid_dynamic_calls
        await _storage.setToken(response.data['token'] as String);
        // ignore: avoid_dynamic_calls
        await _storage.setRefreshToken(response.data['refreshToken'] as String);
        return true;
      } on DioException catch (e) {
        if (kDebugMode) {
          print('refreshing token is failed');
        }

        await _storage.removePinCode();
        await _storage.deleteRefreshToken();
        await _storage.removeToken();

        if (e.response?.statusCode == 400 || e.response?.statusCode == 500) {
          if (kDebugMode) {
            print('cancel requests, logout');
          }

          _cancelRequest();
        }

        return false;
      }
    } else {
      _cancelRequest();

      return false;
    }
  }
}
