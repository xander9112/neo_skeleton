import 'package:core/core.dart';
import 'package:{{appName.snakeCase()}}/src/features/home/_home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_cubit.freezed.dart';
part 'home_cubit.g.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({
    required HomeRepository repository,
  })  : _repository = repository,
        super(const HomeState.initial());

  final HomeRepository _repository;

  Future<void> init() async {
    await getHome();
  }

  Future<void> getHome() async {
    emit(state.copyWith(status: FetchStatus.fetchingInProgress));

    final result = await _repository.getHome();

    result.fold((error) {
      emit(
        state.copyWith(
          status: FetchStatus.fetchingFailure,
          error: error.getLocalizedString(),
        ),
      );
    }, (response) {
      emit(
        state.copyWith(
          home: response,
          status: FetchStatus.fetchingSuccess,
        ),
      );
    });
  }
}
