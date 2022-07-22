import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'theme_cubit.freezed.dart';

part 'theme_state.dart';

class ThemeCubit extends HydratedCubit<ThemeState> {
  ThemeCubit() : super(const ThemeState.initial());

  void setThemeMode(ThemeMode themeMode) {
    emit(state.copyWith(themeMode: themeMode));
  }

  void setLightTheme() {
    emit(state.copyWith(themeMode: ThemeMode.light));
  }

  void setDarkTheme() {
    emit(state.copyWith(themeMode: ThemeMode.dark));
  }

  void setSystemTheme() {
    emit(state.copyWith(themeMode: ThemeMode.system));
  }

  @override
  ThemeState? fromJson(Map<String, dynamic> json) {
    if (json['themeModeIndex'] != null) {
      return ThemeState.initial(
          themeMode: ThemeMode.values[json['themeModeIndex']]);
    }

    return null;
  }

  @override
  Map<String, dynamic>? toJson(ThemeState state) {
    return <String, dynamic>{'themeModeIndex': state.themeMode.index};
  }
}
