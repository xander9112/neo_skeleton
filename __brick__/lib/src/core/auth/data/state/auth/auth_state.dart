part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
 const factory AuthState.initial() = _Initial;
  const factory AuthState.unAuth({
    @Default(FetchStatus.pure) FetchStatus status,
    String? error,
  }) = _UnAuth;
  const factory AuthState.unVerified({
    String? token,
    @Default(FetchStatus.pure) FetchStatus status,
    String? error,
  }) = AuthStateUnVerified;
  const factory AuthState.verified([String? token]) = _Verified;
  const factory AuthState.logout(bool redirect) = _Logout;
}
