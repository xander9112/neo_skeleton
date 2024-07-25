// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

void main() {
  final intlMessages = File('./assets/l10n/intl_messages.arb');
  final intlMessagesEn = File('./assets/l10n/intl_messages_en.arb');
  final intlMessagesRu = File('./assets/l10n/intl_messages_ru.arb');

  final Map<String, dynamic> translations =
      jsonDecode(intlMessages.readAsStringSync()) as Map<String, dynamic>
        ..removeWhere((key, value) => key.contains('@'));

  final Map<String, dynamic> translationsEn =
      jsonDecode(intlMessagesEn.readAsStringSync()) as Map<String, dynamic>
        ..removeWhere((key, value) => key.contains('@'));

  final Map<String, dynamic> translationsRu =
      jsonDecode(intlMessagesRu.readAsStringSync()) as Map<String, dynamic>
        ..removeWhere((key, value) => key.contains('@'));

  translations.forEach((key, value) {
    if (!translationsRu.containsKey(key)) {
      translationsRu.addAll({key: value});
    } else {
      translationsRu.remove(key);
    }
    if (!translationsEn.containsKey(key)) {
      translationsEn.addAll({key: value});
    } else {
      translationsEn.remove(key);
    }
  });

  if (translationsEn.isNotEmpty) {
    print('======Translations En start======\n');
    translationsEn.forEach((key, value) {
      print(key);
    });
    print('======Translations En finish======\n');
  }

  if (translationsRu.isNotEmpty) {
    print('======Translations Ru start======\n');
    translationsRu.forEach((key, value) {
      print(key);
    });
    print('======Translations Ru finish======\n');
  }

  if (translationsRu.isEmpty && translationsEn.isEmpty) {
    print('No issue found');
  }
}
