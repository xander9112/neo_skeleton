part of 'login_cubit.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    @Default(FetchStatus.pure) FetchStatus status,
    @Default(StateStatus.notReady) StateStatus stateStatus,
    String? error,
    @Default(Duration.zero) Duration blockTime,
  }) = _LoginInitialState;

  factory LoginState.fromJson(Object? json) =>
      _$LoginStateFromJson(json! as Map<String, dynamic>);

  const LoginState._();

  @override
  Map<String, dynamic> toJson();

  bool get isBlocked => blockTime.inSeconds > 0;
}
