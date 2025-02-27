part of '{{name.snakeCase()}}_cubit.dart';

@freezed
class {{name.pascalCase()}}State with _${{name.pascalCase()}}State {
  const factory {{name.pascalCase()}}State.initial({
    @Default(FetchStatus.pure) FetchStatus status,
    String? error,
    {{name.pascalCase()}}DTO? {{name.camelCase()}},
  }) = _{{name.pascalCase()}}InitialState;

  const {{name.pascalCase()}}State._();
}
