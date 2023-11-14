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
  })  : _checkLocalAuthUseCase = checkLocalAuthUseCase,
        _setPinCodeUseCase = setPinCodeUseCase,
        _checkPinCodeUseCase = checkPinCodeUseCase,
        _setBiometryUseCase = setBiometryUseCase,
        _checkBiometryUseCase = checkBiometryUseCase,
        _getBiometricSupportModel = getBiometricSupportModel,
        super(const LocalAuthState.initial());

  final CheckLocalAuthUseCase _checkLocalAuthUseCase;

  final SetPinCodeUseCase _setPinCodeUseCase;

  final CheckPinCodeUseCase _checkPinCodeUseCase;

  final SetBiometryUseCase _setBiometryUseCase;

  final CheckBiometryUseCase _checkBiometryUseCase;

  final GetBiometricSupportModel _getBiometricSupportModel;

  String pin1 = '';
  String pin2 = '';

  Future<void> checkAuth() async {
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

          unawaited(_checkBiometryUseCase(CheckBiometryUseCaseParam()));

          break;
        case LocalAuthResult.unlocked:
          emit(const LocalAuthState.success());

          break;
        case LocalAuthResult.notAvailable:
          emit(const LocalAuthState.success());

          break;
        case LocalAuthResult.notInitialized:
          emit(const LocalAuthState.createPin());
          break;
      }
    });
  }

  Future<void> createPin(String pinCode) async {
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

      await _setPinCodeUseCase(pin1);
      
      emit(const LocalAuthState.success());
    }
  }

  Future<void> enterPin(String pinCode) async {
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

  void biometricAuth() {
    unawaited(
      _checkBiometryUseCase(
        CheckBiometryUseCaseParam(),
      ),
    );
  }
}
