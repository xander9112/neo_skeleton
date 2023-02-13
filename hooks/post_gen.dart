import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  await _installPackages(context);

  await _buildProject(context);
}

Future<void> _installPackages(HookContext context) async {
  final progress = context.logger.progress('Installing packages');

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
        ['flutter', 'packages', 'get'],
      );
    } catch (_) {}
  }

  progress.complete();
}

Future<void> _buildProject(HookContext context) async {
  final progress = context.logger.progress('Building project');

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

  progress.complete();
}
