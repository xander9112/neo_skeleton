import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:{{name.snakeCase()}}/src/core/features/settings/_settings.dart';
import 'package:{{name.snakeCase()}}_core/{{name.snakeCase()}}_core.dart';

part 'device_preferences_bloc.freezed.dart';
part 'device_preferences_event.dart';
part 'device_preferences_state.dart';

class DevicePreferencesBloc
    extends Bloc<DevicePreferencesEvent, DevicePreferencesState> {
  DevicePreferencesBloc({
    required DevicePreferencesRepository repository,
  })  : _repository = repository,
        super(
          const _Initial(
            appInfo: AppInfoModel(
              appName: 'appName',
              packageName: 'packageName',
              version: AppVersionEntity(major: 1, minor: 0, patch: 0),
            ),
            deviceInfo: DeviceInfoModel(
              model: 'model',
              system: 'system',
              version: 'version',
              deviceId: 'deviceId',
            ),
          ),
        ) {
    on<_Started>(_started);
    on<_SetLocale>(_setLocale);
    on<_SetThemeMode>(_setThemeMode);
  }

  final DevicePreferencesRepository _repository;

  Future<void> _started(
    _Started event,
    Emitter<DevicePreferencesState> emit,
  ) async {
    emit(
      state.copyWith(
        appInfo: await _repository.getAppInfo(),
        deviceInfo: await _repository.getDeviceInfo(),
        locale: await _repository.getLocale(),
        themeMode: await _repository.getThemeMode(),
        isLoaded: true,
      ),
    );
  }

  Future<void> _setLocale(
    _SetLocale event,
    Emitter<DevicePreferencesState> emit,
  ) async {
    emit(state.copyWith(locale: event.locale));

    await _repository.setLocale(event.locale);
  }

  Future<void> _setThemeMode(
    _SetThemeMode event,
    Emitter<DevicePreferencesState> emit,
  ) async {
    emit(state.copyWith(themeMode: event.themeMode));

    await _repository.setThemeMode(event.themeMode);
  }
}
