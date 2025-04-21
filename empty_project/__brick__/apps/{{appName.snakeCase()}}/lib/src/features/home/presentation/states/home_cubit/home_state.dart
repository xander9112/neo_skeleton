part of 'home_cubit.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState.initial({
    @Default(FetchStatus.pure) FetchStatus status,
    String? error,
    HomeModel? home,
  }) = _HomeInitialState;

  factory HomeState.fromJson(Object? json) =>
      _$HomeStateFromJson(json! as Map<String, dynamic>);

  const HomeState._();

  @override
  Map<String, dynamic> toJson();
}
