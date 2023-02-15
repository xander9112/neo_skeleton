import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:{{projectName.snakeCase()}}/src/core/_core.dart';
import '../../../_{{name.snakeCase()}}.dart';

part '{{name.snakeCase()}}_cubit.freezed.dart';
part '{{name.snakeCase()}}_cubit.g.dart';
part '{{name.snakeCase()}}_state.dart';

class {{name.pascalCase()}}Cubit extends Cubit<{{name.pascalCase()}}State> {
  {{name.pascalCase()}}Cubit({
    required I{{name.pascalCase()}}Repository repository,
  })  : _repository = repository,
        super(const {{name.pascalCase()}}State.initial());

  final I{{name.pascalCase()}}Repository _repository;

  Future<void> init() async {
    await get{{name.pascalCase()}}();
  }

  Future<void> get{{name.pascalCase()}}() async {
    emit(state.copyWith(status: FetchStatus.fetchingInProgress));

    final result = await _repository.get{{name.pascalCase()}}();

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
          {{name.camelCase()}}: response,
          status: FetchStatus.fetchingSuccess,
        ),
      );
    });
  }
}