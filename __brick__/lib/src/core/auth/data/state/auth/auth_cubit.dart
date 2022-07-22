import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/config/config.dart';

import '../../../../../services/services.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit({
    required SecureStorageService secureStorageService,
  })  : _secureStorageService = secureStorageService,
        super(const AuthState.initial());

  final SecureStorageService _secureStorageService;

  Future<void> init() async {
    if (await _secureStorageService.hasToken) {
      emit(const AuthState.verified());
    } else {
      emit(const AuthState.unAuth());
    }
  }

  Future<void> login() async {
    emit(const AuthState.unAuth(status: FetchStatus.fetchingInProgress));

    await Future<dynamic>.delayed(const Duration(seconds: 2));

    await _secureStorageService.setToken('token');

    emit(const AuthState.verified());
  }

  Future<void> logout() async {
    await _secureStorageService.removeToken();

    emit(const AuthState.unAuth(status: FetchStatus.pure));
  }
}
