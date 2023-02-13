import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_state.dart';
part 'main_cubit.freezed.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(const MainState());

  Future<void> init() async {
    emit(state.copyWith(status: FetchStatus.fetchingInProgress));

    try {
      await _configureDependencies(await Env.getCurrentEnv(), useMock: true);
    } finally {
      emit(state.copyWith(status: FetchStatus.fetchingSuccess));
    }
  }

  Future<void> _configureDependencies(
    EnvConfig env, {
    bool useMock = false,
  }) async {
    await Future<void>.delayed(const Duration(seconds: 2));
  }
}
