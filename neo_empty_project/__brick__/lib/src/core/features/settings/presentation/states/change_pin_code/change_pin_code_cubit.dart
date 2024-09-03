import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:skeleton_core/skeleton_core.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

part 'change_pin_code_cubit.freezed.dart';
part 'change_pin_code_cubit.g.dart';
part 'change_pin_code_state.dart';

class ChangePinCodeCubit extends BaseCubit<ChangePinCodeState> {
  ChangePinCodeCubit(this._checkPinCodeUseCase, this._setPinCodeUseCase)
      : super(
          ChangePinCodeState.enterPin(
            length: AppConstants.pinCodeLength,
          ),
        );

  final CheckPinCodeFromDialogUseCase _checkPinCodeUseCase;

  final SetPinCodeUseCase _setPinCodeUseCase;

  String pin1 = '';
  String pin2 = '';

  Future<void> enterPin(String pinCode, void Function(bool)? onResult) async {
    final result = await _checkPinCodeUseCase(pinCode);

    await result.fold((failure) {
      emit(
        ChangePinCodeState.enterPin(
          error: AuthI18n.unknownError,
          length: AppConstants.pinCodeLength,
        ),
      );
    }, (isSuccess) async {
      if (isSuccess) {
        emit(
          ChangePinCodeState.createPin(
            length: AppConstants.pinCodeLength,
          ),
        );
      } else {
        emit(
          ChangePinCodeState.enterPin(
            error: AuthI18n.invalidPin,
            length: AppConstants.pinCodeLength,
          ),
        );

        await Future<void>.delayed(const Duration(seconds: 2));

        emit(
          ChangePinCodeState.enterPin(
            length: AppConstants.pinCodeLength,
          ),
        );
      }
    });
  }

  Future<void> createPin(String pinCode) async {
    if (pin1.isEmpty && pin2.isEmpty) {
      if (pinCode.length == AppConstants.pinCodeLength) {
        pin1 = pinCode;

        emit(
          ChangePinCodeState.createPin(
            confirm: true,
            length: AppConstants.pinCodeLength,
          ),
        );
      } else {
        emit(
          ChangePinCodeState.createPin(
            error: AuthI18n.pinCodeMustContain(4),
            length: AppConstants.pinCodeLength,
          ),
        );
      }
      return;
    }

    if (pin1.isNotEmpty && pin2.isEmpty) {
      if (pinCode.length != AppConstants.pinCodeLength) {
        emit(
          ChangePinCodeState.createPin(
            error: AuthI18n.pinCodeMustContain(4),
            confirm: true,
            length: AppConstants.pinCodeLength,
          ),
        );
        return;
      }

      if (pin1 != pinCode) {
        emit(
          ChangePinCodeState.createPin(
            error: AuthI18n.pinCodesDoNotMatch,
            length: AppConstants.pinCodeLength,
          ),
        );
        pin1 = '';
        pin2 = '';
        return;
      }

      pin2 = pinCode;

      await _setPinCodeUseCase(pin1);

      await Future<void>.delayed(const Duration(milliseconds: 300));

      emit(const ChangePinCodeState.success());
    }
  }
}
