// ignore_for_file: avoid_print

import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:process_run/shell.dart';

import 'utils.dart';

void main(List<String> arguments) async {
  print('Generation from arb started\n');

  final shell = Shell();

  final Directory current = Directory.current;

  final translationsFiles = getL10nFiles();

  final arbDir = Directory(
    p.joinAll([current.path, 'shared', 'l10n', 'assets', 'l10n']),
  );
  final arbList = await arbDir
      .list(recursive: true)
      .where((event) => event.path.contains('intl_'))
      .map((event) => event.path)
      .toList();

  try {
    await shell.run('''
      dart pub global run intl_generator:generate_from_arb ${[
      ...translationsFiles,
    ].join(' ')} ${arbList.join(' ')} --output-dir=shared/l10n/lib/generated
''');

    print('\nGeneration from arb finished\n');
  } catch (error) {
    print('Generation from arb finished with Error:\n\n$error');
  }
}
