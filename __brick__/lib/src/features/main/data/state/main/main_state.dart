part of 'main_cubit.dart';

@freezed
class MainState with _$MainState {
  const factory MainState.initial({
    @Default(FetchStatus.pure) FetchStatus status,
    String? error,
  }) = _Initial;

  factory MainState.fromJson(Object? json) =>
      _$MainStateFromJson(json! as Map<String, dynamic>);

  const MainState._();

  @override
  Map<String, dynamic> toJson();
}
