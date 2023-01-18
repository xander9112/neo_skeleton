part of 'local_auth_cubit.dart';

@freezed
class LocalAuthState with _$LocalAuthState {
  const factory LocalAuthState.initial() = _LocalAuthInitialState;

  const factory LocalAuthState.success() = _LocalAuthSuccessState;

  const factory LocalAuthState.createPin({
    String? error,
    @Default(false) bool confirm,
    @Default(4) int length,
  }) = _LocalAuthCreatePin;

  const factory LocalAuthState.enterPin({
    String? error,
    @Default(4) int length,
    required BiometricSupportModel biometricSupportModel,
  }) = _LocalAuthEnterPin;

  factory LocalAuthState.fromJson(Object? json) =>
      _$LocalAuthStateFromJson(json! as Map<String, dynamic>);

  const LocalAuthState._();

  @override
  Map<String, dynamic> toJson();
}
