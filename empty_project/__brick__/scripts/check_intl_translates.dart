// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;

void main() async {
  final dir = Directory('./shared/l10n/assets/l10n/');

  final intlMessages = File(p.joinAll([dir.path, 'intl_messages.arb']));

  final Map<String, dynamic> translations =
      jsonDecode(intlMessages.readAsStringSync()) as Map<String, dynamic>
        ..removeWhere((key, value) => key.contains('@'));

  final Map<String, dynamic> translationsParams =
      jsonDecode(intlMessages.readAsStringSync()) as Map<String, dynamic>;

  final List<FileSystemEntity> entities = await dir.list().toList();

  final Iterable<FileSystemEntity> translationFiles = entities.where(
    (element) => !element.path.endsWith('_messages.arb'),
  );

  final Map<String, Map<String, dynamic>> langs = {};

  print(translationFiles);

  for (final element in translationFiles) {
    final Map<String, dynamic> translationsByLang =
        jsonDecode(File(element.path).readAsStringSync())
            as Map<String, dynamic>
          ..removeWhere((key, value) => key.contains('@'));

    langs.putIfAbsent(
      element.path.split('_').last.split('.').first,
      () => translationsByLang,
    );
  }

  final Map<String, List<String>> values = {};

  translations.forEach((trKey, trValue) {
    langs.forEach((key, value) {
      if (!values.containsKey(key)) {
        values.putIfAbsent(key, () => <String>[]);
      }

      if (!value.containsKey(trKey)) {
        // ignore: avoid_dynamic_calls
        values[key]?.add(trKey);
      }
    });
  });

  values.removeWhere((key, value) => value.isEmpty);

  if (values.isEmpty) {
    print('No issue found');
  }

  String keysToFiles = '';

  /// Собираем сообщения из intl_messages которых нет в intl_ru и считаем что у них нет переводов
  /// После получения переводов

  for (final item in values['ru'] ?? []) {
    const JsonEncoder encoder = JsonEncoder.withIndent('  ');
    final String prettyprint = encoder.convert(translations[item]);

    // ignore: use_string_buffers
    keysToFiles += """
 "$item": $prettyprint,
  "@$item": ${jsonEncode(translationsParams["@$item"])},
""";
  }

  final File file = await File('./shared/l10n/assets/l10n/new_messages.arb')
      .create(recursive: true);

  await file.writeAsString('{\n$keysToFiles\n}');
}
