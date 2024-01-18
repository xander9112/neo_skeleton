import 'dart:ui';

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
    required AuthManager<AuthenticatedUser> manager,
    required DialogService dialogService,
  })  : _manager = manager,
        _dialogService = dialogService,
        super(
          const SettingsState.current(),
        ) {
    getVersions();
    subscriptAuthEventUseCase(refresh);

    init();
  }

  final DialogService _dialogService;

  final AuthManager<AuthenticatedUser> _manager;

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

    emit(
      state.copyWith(
        useBiometric:
            biometricSupportModel.status == BiometricStatus.notAvailable
                ? null
                : settings.useBiometric,
        useLocalAuth: settings.useLocalAuth,
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

  Future<void> getVersions() async {}

  Future<void> signOut() async {
    final result = await _dialogService.showDialog<bool>(
      dialogType: DialogTypes.confirmDialog,
      body: SettingsI18n.signOutTitle,
    );

    if (result ?? false) {
      await _manager.signOut();
    }
  }
}
