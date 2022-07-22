part of 'theme_cubit.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.initial({
    @Default(ThemeMode.system) ThemeMode themeMode,
  }) = _Initial;
}
