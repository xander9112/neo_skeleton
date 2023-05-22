import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}_core/{{name.snakeCase()}}_core.dart';
import 'package:{{name.snakeCase()}}/src/features/main/_main.dart';

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
