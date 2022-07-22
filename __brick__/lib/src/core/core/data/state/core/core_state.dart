part of 'core_cubit.dart';

@freezed
class CoreState with _$CoreState {
  const factory CoreState.initial() = _Initial;
  const factory CoreState.auth() = _Auth;
  const factory CoreState.main() = _Main;
}
