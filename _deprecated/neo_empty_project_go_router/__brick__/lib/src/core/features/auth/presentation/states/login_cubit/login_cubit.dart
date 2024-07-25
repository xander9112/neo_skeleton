import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:reactive_forms/reactive_forms.dart';

part 'login_cubit.freezed.dart';
part 'login_cubit.g.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({
    required this.loginUseCase,
    required this.checkAuthUseCase,
    required this.checkBlockUseCase,
    required this.unBlockUseCase,
  }) : super(const LoginState.initial());

  final LoginUseCase loginUseCase;

  final CheckAuthUseCase checkAuthUseCase;

  final CheckBlockUseCase checkBlockUseCase;

  final UnBlockUseCase unBlockUseCase;

  final FormGroup form = FormGroup(<String, AbstractControl<dynamic>>{
    'login': FormControl<String>(
      validators: <Validator<dynamic>>[Validators.required],
    ),
    'password': FormControl<String>(
      validators: <Validator<dynamic>>[Validators.required],
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

  Future<void> checkAuth() async {
    final Duration duration = await checkBlockUseCase(NoParams());

    emit(state.copyWith(blockTime: duration));

    final result = await checkAuthUseCase.call(NoParams());

    result.fold(
      (failure) => null,
      (isAuth) => null,
    );
  }

  Future<void> login() async {
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

  Future<void> unBlock() async {
    await unBlockUseCase(NoParams());
  }
}
