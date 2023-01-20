import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:intl/intl.dart';
import 'package:intl/locale.dart' as intl;
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

part 'settings_cubit.freezed.dart';
part 'settings_cubit.g.dart';
part 'settings_state.dart';

class SettingsCubit extends HydratedCubit<SettingsState> {
  SettingsCubit({
    required this.getBiometricSupportModel,
    required this.getGlobalAuthSettings,
    required this.subscriptAuthEventUseCase,
    required this.setBiometrySettingUseCase,
    required this.setNewPinCodeUseCase,
    required this.getAuthUseCase,
  }) : super(const SettingsState.current()) {
    subscriptAuthEventUseCase(refresh);
    //refresh();
  }

  final GetBiometricSupportModel getBiometricSupportModel;

  final GetGlobalAuthSettingsUseCase getGlobalAuthSettings;

  final SubscribeAuthEventUseCase subscriptAuthEventUseCase;

  final SetBiometrySettingUseCase setBiometrySettingUseCase;

  final SetNewPinCodeUseCase setNewPinCodeUseCase;

  final GetAuthUseCase getAuthUseCase;

  Future<void> refresh() async {
    final isAuth = await getAuthUseCase(NoParams());

    final globalAuthSettings = await getGlobalAuthSettings(NoParams());

    bool? useBiometric = false;

    if (globalAuthSettings.useBiometric == false) {
      useBiometric = null;
    } else {
      final biometricSupportModel = await getBiometricSupportModel(NoParams());
      if (biometricSupportModel.status == BiometricStatus.available) {
        useBiometric = biometricSupportModel.useBiometric ?? false;
      }
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
          locale: null,
          appThemeMode: null,
          useBiometric: useBiometric,
          useLocalAuth: globalAuthSettings.useLocalAuth,
        ),
      );
    }
  }

  void setTheme(AppThemeMode? mode) {
    emit(state.copyWith(appThemeMode: mode));
  }

  void setLocale(Locale? locale) {
    emit(state.copyWith(locale: locale));
  }

  Future<void> setBiometry({required bool value}) async {
    await setBiometrySettingUseCase(value);
    emit(state.copyWith(useBiometric: value));
  }

  Future<void> setPinCode() async {
    await setNewPinCodeUseCase(NoParams());
  }

  @override
  SettingsState? fromJson(Map<String, dynamic> json) {
    try {
      return SettingsState.fromJson(json['settings']);
    } catch (e) {
      return const SettingsState.current();
    }
  }

  @override
  Map<String, dynamic>? toJson(SettingsState state) {
    return <String, dynamic>{'settings': state.toJson()};
  }
}
