import 'package:config/config.dart';
import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:settings/src/_src.dart';

part 'change_pin_code_cubit.freezed.dart';
part 'change_pin_code_cubit.g.dart';
part 'change_pin_code_state.dart';

@injectable
class ChangePinCodeCubit extends BaseCubit<ChangePinCodeState> {
  ChangePinCodeCubit(this._checkPinCodeUseCase, this._setPinCodeUseCase)
      : super(
          ChangePinCodeState.enterPin(
            length: Env.pinCodeLength,
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
          error: 'unknownError',
          length: Env.pinCodeLength,
        ),
      );
    }, (isSuccess) async {
      if (isSuccess) {
        emit(
          ChangePinCodeState.createPin(
            length: Env.pinCodeLength,
          ),
        );
      } else {
        emit(
          ChangePinCodeState.enterPin(
            error: SettingsI18n.invalidPin,
            length: Env.pinCodeLength,
          ),
        );

        await Future<void>.delayed(const Duration(seconds: 2));

        emit(
          ChangePinCodeState.enterPin(
            length: Env.pinCodeLength,
          ),
        );
      }
    });
  }

  Future<void> createPin(String pinCode) async {
    if (pin1.isEmpty && pin2.isEmpty) {
      if (pinCode.length == Env.pinCodeLength) {
        pin1 = pinCode;

        emit(
          ChangePinCodeState.createPin(
            confirm: true,
            length: Env.pinCodeLength,
          ),
        );
      } else {
        emit(
          ChangePinCodeState.createPin(
            error: SettingsI18n.pinCodeMustContain(4),
            length: Env.pinCodeLength,
          ),
        );
      }
      return;
    }

    if (pin1.isNotEmpty && pin2.isEmpty) {
      if (pinCode.length != Env.pinCodeLength) {
        emit(
          ChangePinCodeState.createPin(
            error: SettingsI18n.pinCodeMustContain(4),
            confirm: true,
            length: Env.pinCodeLength,
          ),
        );
        return;
      }

      if (pin1 != pinCode) {
        emit(
          ChangePinCodeState.createPin(
            error: SettingsI18n.pinCodesDoNotMatch,
            length: Env.pinCodeLength,
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
