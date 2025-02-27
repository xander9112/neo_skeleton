part of 'main_cubit.dart';

@freezed
abstract class MainState with _$MainState {
  const factory MainState({
    @Default(FetchStatus.pure) FetchStatus status,
    @Default(false) bool isDemo,
  }) = _Initial;
}
