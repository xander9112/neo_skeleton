import 'dart:io';

import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  await _installPackages(context);

  await _buildProject(context);

  await _buildLaunchIcons(context);

  await _dartFix(context);

  await _fixFlavor(context);
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

Future<void> _buildProject(HookContext context) async {
  final progress = context.logger.progress('Building project');

  final List<String> commands = [
    "pub",
    "run",
    "build_runner",
    "build",
    "--delete-conflicting-outputs"
  ];

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

Future<void> _buildLaunchIcons(HookContext context) async {
  final progress = context.logger.progress('Building launch icons');

  final List<String> commands = ['pub', 'run', 'flutter_launcher_icons'];

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

Future<void> _dartFix(HookContext context) async {
  final progress = context.logger.progress('Dart fix');

  final List<String> commands = ['fix', '--apply'];

  try {
    await Directory('./android/app/src/main/kotlin/com/example')
        .delete(recursive: true);
  } catch (_) {}

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

Future<void> _fixFlavor(HookContext context) async {
  final useFlavor = context.vars['useFlavor'] == 'true';

  if (!useFlavor) {
    final progress = context.logger.progress('Dart fix flavor');

    try {
      await Directory('./android/app/src/dev').delete(recursive: true);
      await Directory('./android/app/src/prod').delete(recursive: true);
      await Directory('./.dev.env').delete(recursive: true);
      await Directory('./.prod.env').delete(recursive: true);
    } catch (_) {
    } finally {}

    progress.complete();
  }
}
