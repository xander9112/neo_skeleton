import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:skeleton_core/skeleton_core.dart';

part 'local_auth_cubit.freezed.dart';
part 'local_auth_cubit.g.dart';
part 'local_auth_state.dart';

class LocalAuthCubit extends BaseCubit<LocalAuthState> {
  LocalAuthCubit({
    required AuthManager<UserEntity> manager,
    required CheckLocalAuthUseCase checkLocalAuthUseCase,
    required SetPinCodeUseCase setPinCodeUseCase,
    required CheckPinCodeUseCase checkPinCodeUseCase,
    required SetBiometryUseCase setBiometryUseCase,
    required CheckBiometryUseCase checkBiometryUseCase,
    required GetBiometricSupportModel getBiometricSupportModel,
  })  : _manager = manager,
        _checkLocalAuthUseCase = checkLocalAuthUseCase,
        _setPinCodeUseCase = setPinCodeUseCase,
        _checkPinCodeUseCase = checkPinCodeUseCase,
        _setBiometryUseCase = setBiometryUseCase,
        _checkBiometryUseCase = checkBiometryUseCase,
        _getBiometricSupportModel = getBiometricSupportModel,
        super(const LocalAuthState.initial());

  final AuthManager<UserEntity> _manager;

  final CheckLocalAuthUseCase _checkLocalAuthUseCase;

  final SetPinCodeUseCase _setPinCodeUseCase;

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

        case LocalAuthResult.unlocked:
          emit(const LocalAuthState.success());

        case LocalAuthResult.notAvailable:
          emit(const LocalAuthState.success());

        case LocalAuthResult.notInitialized:
          emit(const LocalAuthState.createPin());
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

      await _setPinCodeUseCase(pin1);

      emit(const LocalAuthState.success());
    }
  }

  Future<void> enterPin(String pinCode, void Function(bool)? onResult) async {
    emit(
      state.maybeMap(
        orElse: () => state,
        enterPin: (value) => value.copyWith(
          status: FetchStatus.fetchingInProgress,
          error: null,
        ),
      ),
    );

    final result = await _checkPinCodeUseCase(
      CheckPinCodeUseCaseParams(
        code: pinCode,
        blockIfError: state.maybeWhen(
          orElse: () => false,
          enterPin: (
            BiometricSupportModel biometricSupportModel,
            String? error,
            int length,
            int errorCount,
            FetchStatus status,
          ) {
            return errorCount == 2;
          },
        ),
      ),
    );

    final biometricSupportModel = await _getBiometricSupportModel(NoParams());

    result.fold(
        (failure) => emit(
              LocalAuthState.enterPin(
                error: AuthI18n.unknownError,
                biometricSupportModel: biometricSupportModel,
              ),
            ), (isSuccess) async {
      if (isSuccess) {
        await Future<void>.delayed(const Duration(seconds: 1));

        emit(const LocalAuthState.success());
      } else {
        state.maybeWhen(
          orElse: () {},
          enterPin: (
            BiometricSupportModel biometricSupportModel,
            String? error,
            int length,
            int errorCount,
            FetchStatus status,
          ) {
            emit(
              LocalAuthState.enterPin(
                biometricSupportModel: biometricSupportModel,
                error: AuthI18n.invalidPin,
                length: length,
                errorCount: errorCount + 1,
              ),
            );
          },
        );
      }
    });
  }

  Future<void> resetPinCode() async {
    final result = await DialogService.showDialog<bool>(
      child: UiConfirmDialog(
        title: AuthI18n.resetTitle,
        body: AuthI18n.resetDescription,
      ),
    );

    if (result ?? false) {
      emit(
        state.maybeMap(
          orElse: () => state,
          enterPin: (value) =>
              value.copyWith(status: FetchStatus.fetchingInProgress),
        ),
      );

      await _manager.signOut();

      emit(const LocalAuthState.resetPinCode());
    }
  }

  void biometricAuth(void Function(bool)? onResult) {
    unawaited(
      _checkBiometryUseCase(
        CheckBiometryUseCaseParam(onResult: onResult),
      ),
    );
  }
}
