import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

part 'check_pin_code_dialog_cubit.freezed.dart';
part 'check_pin_code_dialog_cubit.g.dart';
part 'check_pin_code_dialog_state.dart';

class CheckPinCodeDialogCubit extends Cubit<CheckPinCodeDialogState> {
  CheckPinCodeDialogCubit(this._checkPinCodeUseCase)
      : super(
          CheckPinCodeDialogState.enterPin(
            length: AppConstants.pinCodeLength,
          ),
        );

  final CheckPinCodeFromDialogUseCase _checkPinCodeUseCase;

  Future<void> enterPin(String pinCode, void Function(bool)? onResult) async {
    final result = await _checkPinCodeUseCase(pinCode);

    result.fold(
        (failure) => emit(
              CheckPinCodeDialogState.enterPin(
                error: AuthI18n.unknownError,
                length: AppConstants.pinCodeLength,
              ),
            ), (isSuccess) async {
      if (isSuccess) {
        emit(const CheckPinCodeDialogState.success());
      } else {
        emit(
          CheckPinCodeDialogState.enterPin(
            error: AuthI18n.invalidPin,
            length: AppConstants.pinCodeLength,
          ),
        );
      }
    });
  }
}
