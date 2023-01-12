import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:{{name.snakeCase()}}/src/app.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  Main {{name.camelCase()}}
  Main {{name.snakeCase()}}
  Main {{name.pascalCase()}}
  runApp({
    {name.camelCase()}
  }(router: GetIt.I()));
}
