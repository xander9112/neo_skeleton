import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final progress = context.logger.progress('Installing packages');

  await _installPackages(context);

  await _buildProject(context);

  progress.complete();
}

Future<void> _installPackages(HookContext context) async {
  context.logger.info('Start install packages');

  bool done = false;

  try {
    await Process.run(
      'flutter',
      ['packages', 'get'],
    );

    done = true;
  } catch (_) {}

  if (!done) {
    try {
      await Process.run(
        'fvm',
        ['flutter', "pub", "run", "build_runner", "build"],
      );
    } catch (_) {}
  }
}

Future<void> _buildProject(HookContext context) async {
  context.logger.info('Start build project');

  bool done = false;

  try {
    await Process.run(
      'flutter',
      ["pub", "run", "build_runner", "build"],
    );

    done = true;
  } catch (_) {}

  if (!done) {
    try {
      await Process.run(
        'fvm',
        ['flutter', "pub", "run", "build_runner", "build"],
      );
    } catch (_) {}
  }
}
