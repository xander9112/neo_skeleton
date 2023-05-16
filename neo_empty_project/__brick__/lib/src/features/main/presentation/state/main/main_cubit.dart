import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}_core/{{name.snakeCase()}}_core.dart';
import 'package:{{name.snakeCase()}}/src/features/main/_main.dart';

part 'main_state.dart';
part 'main_cubit.freezed.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(const MainState());

  Future<void> init() async {
    emit(state.copyWith(status: FetchStatus.fetchingInProgress));

    try {
      await _configureDependencies({{#useFlavor}}await Env.getCurrentEnv(), {{/useFlavor}}useMock: true);
    } finally {
      emit(state.copyWith(status: FetchStatus.fetchingSuccess));
    }
  }

  Future<void> _configureDependencies(
    {{#useFlavor}}EnvConfig env,{{/useFlavor}} {
    bool useMock = false,
  }) async {
    await MainInjection().init(env);
  }
}
