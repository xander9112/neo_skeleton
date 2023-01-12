import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/app.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/core/_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp({{#CamelCase}}{{name}}{{/CamelCase}}(router: GetIt.I()));
}
