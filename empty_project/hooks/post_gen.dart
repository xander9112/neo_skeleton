import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) async {
  final useAuth = context.vars['useAuth'] as bool;
  print('USE AUTH: $useAuth');
  if (useAuth) {
    await _installAuthModule(context);
  }

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

List<String> _addMasonBrick(String moduleName) => [
      'add',
      moduleName.replaceAll('_module', ''),
      '--git-url',
      'https://github.com/xander9112/neo_skeleton',
      '--git-path',
      moduleName
    ];

List<String> _installModule(String moduleName) => [
      'make',
      moduleName.replaceAll('_module', ''),
      '--on-conflict',
      'overwrite',
      '-o',
      './modules'
    ];

Future<void> _installAuthModule(HookContext context) async {
  final progress = context.logger.progress('Install authModule project');

  await Process.run('mason', _addMasonBrick('auth_module'));
  await Process.run('mason', _installModule('auth_module'));

  progress.complete();
}
