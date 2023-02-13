import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '{{name.snakeCase()}}_cubit.freezed.dart';
part '{{name.snakeCase()}}_cubit.g.dart';
part '{{name.snakeCase()}}_state.dart';

class {{name.pascalCase()}}Cubit extends Cubit<{{name.pascalCase()}}State> {
  {{name.pascalCase()}}Cubit() : super(const {{name.pascalCase()}}State.initial());
}