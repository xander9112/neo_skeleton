// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  static m0(number) => "${Intl.plural(number, one: 'Pin code must contain ${number} character', other: 'Pin code must contain ${number} characters')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function> {
    "AuthI18n_checkInternetConnection" : MessageLookupByLibrary.simpleMessage("Check internet connection"),
    "AuthI18n_delete" : MessageLookupByLibrary.simpleMessage("Delete"),
    "AuthI18n_enterPinCode" : MessageLookupByLibrary.simpleMessage("Enter pin code"),
    "AuthI18n_invalidPin" : MessageLookupByLibrary.simpleMessage("Invalid PIN"),
    "AuthI18n_login" : MessageLookupByLibrary.simpleMessage("Login"),
    "AuthI18n_loginRequired" : MessageLookupByLibrary.simpleMessage("Login required"),
    "AuthI18n_minimumPassword" : MessageLookupByLibrary.simpleMessage("Password must have at least 6 characters"),
    "AuthI18n_password" : MessageLookupByLibrary.simpleMessage("Password"),
    "AuthI18n_passwordRequired" : MessageLookupByLibrary.simpleMessage("The password must not be empty"),
    "AuthI18n_pinCodeMustContain" : m0,
    "AuthI18n_pinCodesDoNotMatch" : MessageLookupByLibrary.simpleMessage("Pin codes do not match"),
    "AuthI18n_repeatPinCode" : MessageLookupByLibrary.simpleMessage("Repeat pin code"),
    "AuthI18n_reset" : MessageLookupByLibrary.simpleMessage("Reset"),
    "AuthI18n_settingPinCode" : MessageLookupByLibrary.simpleMessage("Setting pin code"),
    "AuthI18n_signIn" : MessageLookupByLibrary.simpleMessage("Sign In"),
    "AuthI18n_signInToAccessTheApp" : MessageLookupByLibrary.simpleMessage("Sign in to access the app"),
    "AuthI18n_unknownError" : MessageLookupByLibrary.simpleMessage("Unknown error. Please try later"),
    "AuthI18n_useBiometricsToLogin" : MessageLookupByLibrary.simpleMessage("Use biometrics to login?"),
    "AuthI18n_userNotFound" : MessageLookupByLibrary.simpleMessage("Incorrect username or password"),
    "CoreI18n_forbiddenError" : MessageLookupByLibrary.simpleMessage("Forbidden"),
    "CoreI18n_internalError" : MessageLookupByLibrary.simpleMessage("Internal Error"),
    "CoreI18n_notFoundError" : MessageLookupByLibrary.simpleMessage("Not found"),
    "CoreI18n_serviceUnavailableError" : MessageLookupByLibrary.simpleMessage("Service Unavaliable"),
    "CoreI18n_unknownError" : MessageLookupByLibrary.simpleMessage("Unknown Error"),
    "SplashI18n_title" : MessageLookupByLibrary.simpleMessage("Splash title")
  };
}
