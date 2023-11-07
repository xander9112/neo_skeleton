import 'dart:io';
import 'package:mason/mason.dart';
import 'package:path/path.dart' as path;

Future<void> run(HookContext context) async {
  await _renameFolder(context);
}

Future<void> _renameFolder(HookContext context) async {
  final progress = context.logger.progress('Installing packages');

  final Directory current = Directory.current;

  final newDir = Directory(
      path.joinAll([current.path, context.vars['name'].toString().snakeCase]));

  Directory(path.joinAll([current.path, context.vars['name']]))
      .renameSync(newDir.path);

  progress.complete();
}
