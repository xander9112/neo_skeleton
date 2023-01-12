import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:{{name.snakeCase()}}/src/app.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();

  runApp({{name.pascalCase()}}App(router: GetIt.I()));
}
