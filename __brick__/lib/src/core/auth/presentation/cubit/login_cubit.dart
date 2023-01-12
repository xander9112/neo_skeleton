import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/core/_core.dart';
import 'package:reactive_forms/reactive_forms.dart';

part 'login_cubit.freezed.dart';
part 'login_cubit.g.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required this.loginUseCase, required this.checkAuthUseCase})
      : super(const LoginState.initial());

  final LoginUseCase loginUseCase;

  final CheckAuthUseCase checkAuthUseCase;

  final FormGroup form = FormGroup(<String, AbstractControl<dynamic>>{
    'login': FormControl<String>(
      validators: <ValidatorFunction>[Validators.required],
    ),
    'password': FormControl<String>(
      validators: <ValidatorFunction>[Validators.required],
    ),
  });

  Future<void> clear() async {
    emit(const LoginState.initial());
  }

  void setError(String error) {
    emit(state.copyWith(error: error, status: FetchStatus.fetchingFailure));
  }

  void removeError() {
    emit(state.copyWith(error: null, status: FetchStatus.fetchingSuccess));
  }

  Future<void> checkAuth(void Function(bool)? onResult) async {
    final result =
        await checkAuthUseCase.call(CheckAuthUseCaseParam(onResult: onResult));

    result.fold(
      (failure) => null,
      (isAuth) => null,
    );
  }

  Future<void> login(
    void Function(bool)? onResult,
  ) async {
    final login = form.value['login'].toString();
    final password = form.value['password'].toString();

    emit(state.copyWith(status: FetchStatus.fetchingInProgress));

    final result = await loginUseCase
        .call(LoginUseCaseParam(login: login, password: password));

    result.fold(
      (failure) => setError(failure.message),
      (success) => removeError(),
    );
  }
}
