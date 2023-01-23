part of 'check_pin_code_dialog_cubit.dart';

@freezed
class CheckPinCodeDialogState with _$CheckPinCodeDialogState {
  const factory CheckPinCodeDialogState.initial() = _CheckPinCodeDialogInitial;

  const factory CheckPinCodeDialogState.success() = _CheckPinCodeDialogSuccess;

  const factory CheckPinCodeDialogState.enterPin({
    String? error,
    @Default(4) int length,
  }) = _CheckPinCodeDialogEnterPin;

  factory CheckPinCodeDialogState.fromJson(Object? json) =>
      _$CheckPinCodeDialogStateFromJson(json! as Map<String, dynamic>);

  const CheckPinCodeDialogState._();

  @override
  Map<String, dynamic> toJson();
}
