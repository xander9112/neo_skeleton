import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

part 'local_auth_cubit.freezed.dart';
part 'local_auth_cubit.g.dart';
part 'local_auth_state.dart';

class LocalAuthCubit extends Cubit<LocalAuthState> {
  LocalAuthCubit({
    required CheckLocalAuthUseCase checkLocalAuthUseCase,
    required SetPinCodeUseCase setPinCodeUseCase,
    required CheckPinCodeUseCase checkPinCodeUseCase,
    required SetBiometryUseCase setBiometryUseCase,
    required CheckBiometryUseCase checkBiometryUseCase,
    required GetBiometricSupportModel getBiometricSupportModel,
    required NavigateToMainUseCase navigateToMainUseCase,
  })  : _checkLocalAuthUseCase = checkLocalAuthUseCase,
        _setPinCodeUseCase = setPinCodeUseCase,
        _checkPinCodeUseCase = checkPinCodeUseCase,
        _setBiometryUseCase = setBiometryUseCase,
        _checkBiometryUseCase = checkBiometryUseCase,
        _getBiometricSupportModel = getBiometricSupportModel,
        _navigateToMainUseCase = navigateToMainUseCase,
        super(const LocalAuthState.initial());

  final CheckLocalAuthUseCase _checkLocalAuthUseCase;

  final SetPinCodeUseCase _setPinCodeUseCase;

  final NavigateToMainUseCase _navigateToMainUseCase;

  final CheckPinCodeUseCase _checkPinCodeUseCase;

  final SetBiometryUseCase _setBiometryUseCase;

  final CheckBiometryUseCase _checkBiometryUseCase;

  final GetBiometricSupportModel _getBiometricSupportModel;

  String pin1 = '';
  String pin2 = '';

  Future<void> checkAuth(void Function(bool)? onResult) async {
    final result = await _checkLocalAuthUseCase(NoParams());

    await result.fold((failure) => null, (localAuthResult) async {
      switch (localAuthResult) {
        case LocalAuthResult.locked:
          final biometricSupportModel =
              await _getBiometricSupportModel(NoParams());

          emit(
            LocalAuthState.enterPin(
              length: AppConstants.pinCodeLength,
              biometricSupportModel: biometricSupportModel,
            ),
          );

          unawaited(
            _checkBiometryUseCase(
              CheckBiometryUseCaseParam(onResult: onResult),
            ),
          );

          break;
        case LocalAuthResult.unlocked:
          emit(const LocalAuthState.success());

          if (onResult != null) {
            onResult.call(true);
          } else {
            await _navigateToMainUseCase(null);
          }
          break;
        case LocalAuthResult.notAvailable:
          emit(const LocalAuthState.success());
          if (onResult != null) {
            onResult.call(true);
          } else {
            await _navigateToMainUseCase(null);
          }
          break;
        case LocalAuthResult.notInitialized:
          emit(const LocalAuthState.createPin());
          break;
      }
    });
  }

  Future<void> createPin(String pinCode, void Function(bool)? onResult) async {
    if (pin1.isEmpty && pin2.isEmpty) {
      if (pinCode.length == AppConstants.pinCodeLength) {
        pin1 = pinCode;

        emit(
          LocalAuthState.createPin(
            confirm: true,
            length: AppConstants.pinCodeLength,
          ),
        );
      } else {
        emit(
          LocalAuthState.createPin(
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
          LocalAuthState.createPin(
            error: AuthI18n.pinCodeMustContain(4),
            confirm: true,
            length: AppConstants.pinCodeLength,
          ),
        );
        return;
      }

      if (pin1 != pinCode) {
        emit(
          LocalAuthState.createPin(
            error: AuthI18n.pinCodesDoNotMatch,
            length: AppConstants.pinCodeLength,
          ),
        );
        pin1 = '';
        pin2 = '';
        return;
      }

      pin2 = pinCode;

      await _setBiometryUseCase(NoParams());

      emit(const LocalAuthState.success());

      await _setPinCodeUseCase(pin1);
      await _navigateToMainUseCase(onResult);
    }
  }

  Future<void> enterPin(String pinCode, void Function(bool)? onResult) async {
    final result = await _checkPinCodeUseCase(pinCode);

    final biometricSupportModel = await _getBiometricSupportModel(NoParams());

    result.fold(
        (failure) => emit(
              LocalAuthState.enterPin(
                error: AuthI18n.unknownError,
                biometricSupportModel: biometricSupportModel,
              ),
            ), (isSuccess) async {
      if (isSuccess) {
        emit(const LocalAuthState.success());

        await _navigateToMainUseCase(onResult);
      } else {
        emit(
          LocalAuthState.enterPin(
            error: AuthI18n.invalidPin,
            biometricSupportModel: biometricSupportModel,
          ),
        );
      }
    });
  }

  void biometricAuth(void Function(bool)? onResult) {
    unawaited(
      _checkBiometryUseCase(
        CheckBiometryUseCaseParam(onResult: onResult),
      ),
    );
  }
}
