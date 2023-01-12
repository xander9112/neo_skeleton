// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, always_declare_return_types

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = MessageLookup();

typedef String MessageIfAbsent(String? messageStr, List<Object>? args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ru';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function> {
    "AuthI18n_login" : MessageLookupByLibrary.simpleMessage("Логин"),
    "AuthI18n_loginRequired" : MessageLookupByLibrary.simpleMessage("Введите логин"),
    "AuthI18n_password" : MessageLookupByLibrary.simpleMessage("Пароль"),
    "AuthI18n_passwordRequired" : MessageLookupByLibrary.simpleMessage("Введите пароль"),
    "AuthI18n_signIn" : MessageLookupByLibrary.simpleMessage("Вход"),
    "CoreI18n_forbiddenError" : MessageLookupByLibrary.simpleMessage("Запрещено"),
    "CoreI18n_internalError" : MessageLookupByLibrary.simpleMessage("Внутренняя ошибка"),
    "CoreI18n_notFoundError" : MessageLookupByLibrary.simpleMessage("Не найдено"),
    "CoreI18n_serviceUnavailableError" : MessageLookupByLibrary.simpleMessage("Сервис не доступен"),
    "CoreI18n_unknownError" : MessageLookupByLibrary.simpleMessage("Неизвестная ошибка"),
    "SplashI18n_title" : MessageLookupByLibrary.simpleMessage("Заголовок сплеш скрина")
  };
}
