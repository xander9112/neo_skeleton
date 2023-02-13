// ignore_for_file: avoid_print
import 'dart:io';

import 'package:process_run/shell.dart';

void main() async {
  final String? flutter = whichSync('flutter');

  if (flutter == null) {
    print('There is no flutter executable in system.');

    exit(64);
  }

  final ShellLinesController controller = ShellLinesController();

  controller.stream.listen(print);

  final Shell shell = Shell(
    stdout: controller.sink,
  );

  try {
    print('Start pub get for package.\n');

    await shell.runExecutableArguments(
      flutter,
      'pub get'.split(' '),
    );

    print('\nStart build_runner for package.\n');

    await shell.runExecutableArguments(
      flutter,
      'pub run build_runner build --delete-conflicting-outputs'.split(' '),
    );

    print('\nStart dart format lib for package.\n');
    await shell.run('dart format lib');

    print('\nStart dart format packages.\n');
    await shell.run('dart format packages');
  } on ShellException catch (_) {
    print('Exception while running build: $_');
  } finally {
    controller.close();
    shell.kill();
    print('\nEnd running init.\n');
  }
}
