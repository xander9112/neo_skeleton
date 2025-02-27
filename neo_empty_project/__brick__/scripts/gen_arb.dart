// ignore_for_file: avoid_print

import 'package:process_run/shell.dart';

import 'utils.dart';

void main(List<String> arguments) async {
  print('Generation of arb started\n');

  final shell = Shell();

  final translationsFiles = getL10nFiles();

  try {
    await shell.run('''
      dart pub global run intl_generator:extract_to_arb --output-dir=shared/l10n/assets/l10n ${[
      ...translationsFiles,
    ].join(' ')}
''');

    print('\nGeneration of arb finished\n');
  } catch (error) {
    print('Generation of arb finished with Error:\n\n$error');
  }
}
