part of '{{name.snakeCase()}}_cubit.dart';

@freezed
class {{name.pascalCase()}}State with _${{name.pascalCase()}}State {
  const factory {{name.pascalCase()}}State.initial({
    @Default(FetchStatus.pure) FetchStatus status,
    String? error,
    {{name.pascalCase()}}DTO? {{name.camelCase()}},
  }) = _{{name.pascalCase()}}InitialState;

  factory {{name.pascalCase()}}State.fromJson(Object? json) =>
      _${{name.pascalCase()}}StateFromJson(json! as Map<String, dynamic>);

  const {{name.pascalCase()}}State._();

  @override
  Map<String, dynamic> toJson();
}
