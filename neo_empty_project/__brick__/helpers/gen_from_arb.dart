// ignore_for_file: avoid_print

import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:process_run/shell.dart';

void main() async {
  final shell = Shell();

  final Directory current = Directory.current;

  final dir = Directory(p.joinAll([current.path, 'lib', 'src']));
  final arbDir = Directory(p.joinAll([current.path, 'assets', 'l10n']));

  final list = await dir
      .list(recursive: true)
      .where((event) => event.path.contains('l10n.dart'))
      .map((event) => event.path)
      .toList();

  final arbList = await arbDir
      .list(recursive: true)
      .where((event) => event.path.contains('intl_messages_'))
      .map((event) => event.path)
      .toList();

  print('Generation from arb started\n');

  try {
    await shell.run('''
      dart pub global run intl_generator:generate_from_arb ${list.join(' ')} ${arbList.join(' ')} --output-dir=lib/l10n/generated
''');

    print('\nGeneration from arb finished\n');
  } catch (error) {
    print('Generation from arb finished with Error:\n\n$error');
  }
}
