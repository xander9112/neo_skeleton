part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial({
    @Default(FetchStatus.pure) FetchStatus status,
    String? error,
  }) = _Initial;

  factory ProfileState.fromJson(Object? json) =>
      _$ProfileStateFromJson(json! as Map<String, dynamic>);

  const ProfileState._();

  @override
  Map<String, dynamic> toJson();
}
