import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final progress = context.logger.progress('Installing packages');

  // Read vars.
  final useFvm = context.vars['useFvm'] == 'true';

  context.logger.info('Start install packages');

  if (useFvm) {
    await Process.run('fvm', ['flutter', 'packages', 'get']);
  } else {
    await Process.run('flutter', ['packages', 'get']);
  }

  progress.complete();
}
