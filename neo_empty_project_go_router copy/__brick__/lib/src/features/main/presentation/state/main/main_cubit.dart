import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

part 'main_state.dart';
part 'main_cubit.freezed.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit(this.mocked) : super(const MainState());

  final bool mocked;

  Future<void> init() async {
    emit(state.copyWith(status: FetchStatus.fetchingInProgress));

    emit(state.copyWith(status: FetchStatus.fetchingSuccess, isDemo: mocked));
  }
}
