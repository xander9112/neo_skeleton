import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) async {
  print(context.vars);

  await _installPackages(context);
  await _installMelos(context);
  await _runMelos(context);
}

Future<void> _installPackages(HookContext context) async {
  final progress = context.logger.progress('Installing packages');

  final List<String> commands = ['packages', 'get'];

  await Process.run('flutter', commands).onError(
    (error, stackTrace) {
      return Process.run(
        'flutter',
        [...commands],
      );
    },
  );

  progress.complete();
}

Future<void> _installMelos(HookContext context) async {
  final progress = context.logger.progress('Installing melos');

  final List<String> commands = ['pub' 'global' 'activate' 'melos'];

  await Process.run('dart', commands).onError(
    (error, stackTrace) {
      return Process.run(
        'dart',
        [...commands],
      );
    },
  );

  progress.complete();
}

Future<void> _runMelos(HookContext context) async {
  final progress = context.logger.progress('Bootstrap project');

  final List<String> commands = ['bootstrap'];

  await Process.run('melos', commands).onError(
    (error, stackTrace) {
      return Process.run(
        'flutter',
        [...commands],
      );
    },
  );

  progress.complete();
}
