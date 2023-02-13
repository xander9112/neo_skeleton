import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  await _installPackages(context);

  await _buildProject(context);
}

Future<void> _installPackages(HookContext context) async {
  final progress = context.logger.progress('Installing packages');

  final List<String> commands = ['packages', 'get'];

  await Process.run('flutter', commands).onError(
    (error, stackTrace) {
      return Process.run(
        'fvm',
        ['flutter', ...commands],
      );
    },
  );

  progress.complete();
}

Future<void> _buildProject(HookContext context) async {
  final progress = context.logger.progress('Building project');

  final List<String> commands = ["pub", "run", "build_runner", "build"];

  await Process.run('flutter', commands).onError(
    (error, stackTrace) {
      return Process.run(
        'fvm',
        ['flutter', ...commands],
      );
    },
  );

  progress.complete();
}
