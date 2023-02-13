import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final progress = context.logger.progress('Installing packages');

  context.logger.info('Start install packages');

  try {
    await Process.run('flutter', ['packages', 'get']);
  } catch (_) {
    await Process.run('fvm', ['flutter', 'packages', 'get']);
  } finally {
    progress.complete();
  }
}
