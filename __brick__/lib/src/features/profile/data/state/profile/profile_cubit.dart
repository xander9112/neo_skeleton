import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/config/config.dart';

part 'profile_cubit.freezed.dart';
part 'profile_cubit.g.dart';
part 'profile_state.dart';

class ProfileCubit extends HydratedCubit<ProfileState> {
  ProfileCubit() : super(const ProfileState.initial());

  void init() {}

  @override
  Future<void> clear() async {
    super.clear();

    emit(const ProfileState.initial());
  }

  @override
  Map<String, dynamic>? toJson(ProfileState state) {
    return <String, dynamic>{'value': state.toJson()};
  }

  @override
  ProfileState? fromJson(Map<String, dynamic> json) {
    return ProfileState.fromJson(json['value']);
  }
}
