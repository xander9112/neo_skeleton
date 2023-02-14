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

  static m0(number) =>
      "${Intl.plural(number, one: 'Пин код должен содержать ${number} символов', other: 'Пин код должен содержать ${number} символов')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "AuthI18n_checkInternetConnection":
            MessageLookupByLibrary.simpleMessage(
                "Проверьте интернет соединение"),
        "AuthI18n_delete": MessageLookupByLibrary.simpleMessage("Удалить"),
        "AuthI18n_enterPinCode":
            MessageLookupByLibrary.simpleMessage("Введите пин код"),
        "AuthI18n_invalidPin":
            MessageLookupByLibrary.simpleMessage("Некорректный пин код"),
        "AuthI18n_login": MessageLookupByLibrary.simpleMessage("Логин"),
        "AuthI18n_loginRequired":
            MessageLookupByLibrary.simpleMessage("Логин обязателен"),
        "AuthI18n_minimumPassword": MessageLookupByLibrary.simpleMessage(
            "Пароль должен быть больше 6 символов"),
        "AuthI18n_password": MessageLookupByLibrary.simpleMessage("Пароль"),
        "AuthI18n_passwordRequired":
            MessageLookupByLibrary.simpleMessage("Пароль не может быть пустым"),
        "AuthI18n_pinCodeMustContain": m0,
        "AuthI18n_pinCodesDoNotMatch":
            MessageLookupByLibrary.simpleMessage("Пин коды не совпадают"),
        "AuthI18n_repeatPinCode":
            MessageLookupByLibrary.simpleMessage("Повторите пин код"),
        "AuthI18n_reset": MessageLookupByLibrary.simpleMessage("Сбросить"),
        "AuthI18n_settingPinCode":
            MessageLookupByLibrary.simpleMessage("Настройки пин кода"),
        "AuthI18n_signIn": MessageLookupByLibrary.simpleMessage("Авторизация"),
        "AuthI18n_signInToAccessTheApp": MessageLookupByLibrary.simpleMessage(
            "Авторизуйтесь для доступа к приложению"),
        "AuthI18n_unknownError": MessageLookupByLibrary.simpleMessage(
            "Неизвестная ошибка. Попробуйте позже"),
        "AuthI18n_useBiometricsToLogin":
            MessageLookupByLibrary.simpleMessage("Использовать биометрию?"),
        "AuthI18n_userNotFound": MessageLookupByLibrary.simpleMessage(
            "Некорректный логин или пароль"),
        "CoreI18n_forbiddenError":
            MessageLookupByLibrary.simpleMessage("Недоступно"),
        "CoreI18n_internalError":
            MessageLookupByLibrary.simpleMessage("Ошибка сервера"),
        "CoreI18n_notFoundError":
            MessageLookupByLibrary.simpleMessage("Не найдено"),
        "CoreI18n_serviceUnavailableError":
            MessageLookupByLibrary.simpleMessage("Сервис недоступен"),
        "CoreI18n_unknownError":
            MessageLookupByLibrary.simpleMessage("Неизвестная ошибка"),
        "HomeI18n_title":
            MessageLookupByLibrary.simpleMessage("Главная страница"),
        "MainI18n_homeBottomMenuItem":
            MessageLookupByLibrary.simpleMessage("Главная"),
        "MainI18n_settingsBottomMenuItem":
            MessageLookupByLibrary.simpleMessage("Настройки"),
        "SettingsI18n_changePinCode":
            MessageLookupByLibrary.simpleMessage("Изменить пин код"),
        "SettingsI18n_darkTheme":
            MessageLookupByLibrary.simpleMessage("Темная"),
        "SettingsI18n_lightTheme":
            MessageLookupByLibrary.simpleMessage("Светлая"),
        "SettingsI18n_selectLanguage":
            MessageLookupByLibrary.simpleMessage("Выберите язык"),
        "SettingsI18n_selectTheme":
            MessageLookupByLibrary.simpleMessage("Выберите тему"),
        "SettingsI18n_systemLanguage":
            MessageLookupByLibrary.simpleMessage("Системный язык"),
        "SettingsI18n_systemTheme":
            MessageLookupByLibrary.simpleMessage("Системная"),
        "SettingsI18n_theme": MessageLookupByLibrary.simpleMessage("Тема"),
        "SettingsI18n_title":
            MessageLookupByLibrary.simpleMessage("Страница настроек"),
        "SettingsI18n_useBiometrics":
            MessageLookupByLibrary.simpleMessage("Использовать биометрию?"),
        "SettingsI18n_useLocalAuth": MessageLookupByLibrary.simpleMessage(
            "Использовать локальную авторизацию?"),
        "SplashI18n_title":
            MessageLookupByLibrary.simpleMessage("Splash заголовок")
      };
}
