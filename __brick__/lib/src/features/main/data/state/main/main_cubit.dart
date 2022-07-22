import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/config/config.dart';

part 'main_cubit.freezed.dart';
part 'main_cubit.g.dart';
part 'main_state.dart';

class MainCubit extends HydratedCubit<MainState> {
  MainCubit() : super(const MainState.initial());

  void init() {}

  @override
  Future<void> clear() async {
    super.clear();

    emit(const MainState.initial());
  }

  @override
  Map<String, dynamic>? toJson(MainState state) {
    return <String, dynamic>{'value': state.toJson()};
  }

  @override
  MainState? fromJson(Map<String, dynamic> json) {
    return MainState.fromJson(json['value']);
  }
}
