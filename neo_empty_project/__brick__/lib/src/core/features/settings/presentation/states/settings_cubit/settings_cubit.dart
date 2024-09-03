import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:intl/locale.dart' as intl;
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}_core/{{name.snakeCase()}}_core.dart';

part 'settings_cubit.freezed.dart';
part 'settings_state.dart';

class SettingsCubit extends BaseCubit<SettingsState> {
  SettingsCubit({
    required this.appInfo,
    required this.deviceInfo,
    required this.getBiometricSupportModel,
    required this.getGlobalAuthSettings,
    required this.subscriptAuthEventUseCase,
    required this.setBiometrySettingUseCase,
    required this.getAuthUseCase,
    required this.setLocalAuthUseCase,
    required AuthManager<UserEntity> manager,
    required DevicePreferencesRepository repository,
  })  : _manager = manager,
        _repository = repository,
        super(SettingsState(appInfo: appInfo, deviceInfo: deviceInfo)) {
    subscriptAuthEventUseCase(refresh);

    init();
  }

  final AuthManager<UserEntity> _manager;

  final DevicePreferencesRepository _repository;

  final AppInfoModel appInfo;

  final DeviceInfoModel deviceInfo;

  final GetBiometricSupportModel getBiometricSupportModel;

  final GetGlobalAuthSettingsUseCase getGlobalAuthSettings;

  final SubscribeAuthEventUseCase subscriptAuthEventUseCase;

  final SetBiometrySettingUseCase setBiometrySettingUseCase;

  final SetLocalAuthUseCase setLocalAuthUseCase;

  final GetAuthUseCase getAuthUseCase;

  Future<void> init() async {
    final settings = await getGlobalAuthSettings(NoParams());

    final biometricSupportModel = await getBiometricSupportModel(NoParams());

    await getSettings();
    await getVersions();

    emit(
      state.copyWith(
        useBiometric:
            biometricSupportModel.status == BiometricStatus.notAvailable
                ? null
                : settings.useBiometric,
        useLocalAuth: settings.useLocalAuth,
        locale: await _repository.getLocale(),
        themeMode: await _repository.getThemeMode(),
        isLoaded: true,
      ),
    );
  }

  Future<void> refresh() async {
    final isAuth = await getAuthUseCase(NoParams());

    final globalAuthSettings = await getGlobalAuthSettings(NoParams());

    bool? useBiometric;

    if (globalAuthSettings.useBiometric == false) {
      useBiometric = null;
    } else {
      final biometricSupportModel = await getBiometricSupportModel(NoParams());

      if (biometricSupportModel.status == BiometricStatus.available) {
        useBiometric = biometricSupportModel.useBiometric ?? false;
      }
    }

    if (isClosed) {
      return;
    }

    if (isAuth) {
      emit(
        state.copyWith(
          useBiometric: useBiometric,
          useLocalAuth: globalAuthSettings.useLocalAuth,
        ),
      );
    } else {
      emit(
        state.copyWith(
          useBiometric: useBiometric,
          useLocalAuth: globalAuthSettings.useLocalAuth,
        ),
      );
    }
  }

  Future<void> setBiometry({required bool value}) async {
    await setBiometrySettingUseCase(value);

    emit(state.copyWith(useBiometric: value));
  }

  Future<void> setUseLocalAuth({required bool value}) async {
    emit(state.copyWith(useLocalAuth: value));

    await setLocalAuthUseCase(value);
  }

  Future<void> getSettings() async {}

  Future<void> getVersions() async {
    await Future<void>.delayed(const Duration(seconds: 2));

    emit(
      state.copyWith(
        storeVersion: const AppVersionEntity(major: 1, minor: 0, patch: 0),
      ),
    );
  }

  Future<void> signOut() async {
    final result = await DialogService.showDialog<bool>(
      child: UiConfirmDialog(
        title: SettingsI18n.signOutTitle,
      ),
    );

    if (result ?? false) {
      await _manager.signOut();
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
