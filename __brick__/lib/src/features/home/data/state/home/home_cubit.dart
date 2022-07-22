import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/config/config.dart';

part 'home_cubit.freezed.dart';
part 'home_cubit.g.dart';
part 'home_state.dart';

class HomeCubit extends HydratedCubit<HomeState> {
  HomeCubit() : super(const HomeState.initial());

  void init() {}

  @override
  Future<void> clear() async {
    super.clear();

    emit(const HomeState.initial());
  }

  @override
  Map<String, dynamic>? toJson(HomeState state) {
    return <String, dynamic>{'value': state.toJson()};
  }

  @override
  HomeState? fromJson(Map<String, dynamic> json) {
    return HomeState.fromJson(json['value']);
  }
}
