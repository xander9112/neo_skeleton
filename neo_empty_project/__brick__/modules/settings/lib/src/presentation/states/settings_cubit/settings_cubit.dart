import 'package:auth/auth.dart';
import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:settings/src/_src.dart';
import 'package:ui_kit/ui_kit.dart';

part 'settings_cubit.freezed.dart';
part 'settings_state.dart';

class SettingsCubit extends BaseCubit<SettingsState> {
  SettingsCubit({
    required this.appInfo,
    required this.deviceInfo,
    required this.getBiometricSupportModel,
    required this.setBiometrySettingUseCase,
    required this.setLocalAuthUseCase,
    required this.getLocalAuthUseCase,
    required SettingsRepository repository,
    AuthSettings? authSettings,
  })  : _repository = repository,
        _authSettings = authSettings ??
            const AuthSettings(
              useBiometric: true,
              useLocalAuth: true,
            ),
        super(
          SettingsState(
            appInfo: appInfo,
            deviceInfo: deviceInfo,
            authSettings: authSettings ??
                const AuthSettings(useBiometric: true, useLocalAuth: true),
          ),
        );

  final AuthSettings _authSettings;

  final SettingsRepository _repository;

  final AppInfoModel appInfo;

  final DeviceInfoModel deviceInfo;

  final GetBiometricSupportModel getBiometricSupportModel;

  final SetBiometrySettingUseCase setBiometrySettingUseCase;

  final SetLocalAuthUseCase setLocalAuthUseCase;

  final GetLocalAuthUseCase getLocalAuthUseCase;

  Future<void> init() async {
    final biometricSupportModel = await _getBiometricSupportModel();

    await getSettings();
    await getVersions();

    bool useLocalAuth = _authSettings.canUseLocalAuth;

    if (useLocalAuth) {
      useLocalAuth = await getLocalAuthUseCase();
    }

    emit(
      state.copyWith(
        useBiometric:
            biometricSupportModel.status == BiometricStatus.notAvailable
                ? null
                : _authSettings.useBiometric,
        useLocalAuth: useLocalAuth,
        status: FetchStatus.fetchingSuccess,
      ),
    );
  }

  Future<BiometricSupportModel> _getBiometricSupportModel() async {
    if (!_authSettings.useBiometric) {
      return const BiometricSupportModel(useBiometric: false);
    }

    return getBiometricSupportModel();
  }

  // Future<void> refresh() async {
  //   final isAuth = await getAuthUseCase();

  //   final globalAuthSettings = await getGlobalAuthSettings();

  //   bool? useBiometric;

  //   if (globalAuthSettings.useBiometric == false) {
  //     useBiometric = null;
  //   } else {
  //     final biometricSupportModel = await getBiometricSupportModel();

  //     if (biometricSupportModel.status == BiometricStatus.available) {
  //       useBiometric = biometricSupportModel.useBiometric ?? false;
  //     }
  //   }

  //   if (isClosed) {
  //     return;
  //   }

  //   if (isAuth) {
  //     emit(
  //       state.copyWith(
  //         useBiometric: useBiometric,
  //         useLocalAuth: globalAuthSettings.useLocalAuth,
  //       ),
  //     );
  //   } else {
  //     emit(
  //       state.copyWith(
  //         useBiometric: useBiometric,
  //         useLocalAuth: globalAuthSettings.useLocalAuth,
  //       ),
  //     );
  //   }
  // }

  Future<void> setBiometry({required bool value}) async {
    await setBiometrySettingUseCase(value);

    emit(state.copyWith(useBiometric: value));
  }

  Future<void> setUseLocalAuth({required bool value}) async {
    emit(state.copyWith(useLocalAuth: value));

    await setLocalAuthUseCase(value);
  }

  Future<void> getSettings() async {
    final result = await _repository.getUserSettings();

    result.fold(
      (l) {
        emit(state.copyWith(status: FetchStatus.fetchingFailure));
      },
      (response) {
        emit(
          state.copyWith(
            locale: response.locale,
            themeMode: response.themeMode,
          ),
        );
      },
    );
  }

  Future<void> getVersions() async {
    final result = await _repository.getStoreVersion();

    result.fold(
      (error) {},
      (response) {
        emit(state.copyWith(storeVersion: response));
      },
    );
  }

  Future<void> signOut() async {
    final result = await DialogService.showDialog<bool>(
      child: UiConfirmDialog(
        title: SettingsI18n.signOutTitle,
      ),
    );

    if (result ?? false) {
      await sl<AuthManager<UserEntity>>().signOut();
    }
  }

  Future<void> setLocale(Locale? locale) async {
    emit(state.copyWith(locale: locale));

    await _repository.setLocale(locale);
  }

  Future<void> setThemeMode(ThemeMode? themeMode) async {
    emit(state.copyWith(themeMode: themeMode));

    await _repository.setThemeMode(themeMode);
  }
}
