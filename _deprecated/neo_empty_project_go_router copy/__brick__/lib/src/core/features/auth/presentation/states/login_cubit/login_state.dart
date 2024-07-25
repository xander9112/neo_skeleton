part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial({
    @Default(FetchStatus.pure) FetchStatus status,
    String? error,
  }) = _LoginInitialState;

  factory LoginState.fromJson(Object? json) =>
      _$LoginStateFromJson(json! as Map<String, dynamic>);

  const LoginState._();

  @override
  Map<String, dynamic> toJson();
}
