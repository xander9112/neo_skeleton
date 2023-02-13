import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final progress = context.logger.progress('Installing packages');

  // Run `flutter packages get` after generation.

  context.logger.info('Start fvm');

  await Process.run('fvm', ['flutter', 'packages', 'get']);

  progress.complete();
}
