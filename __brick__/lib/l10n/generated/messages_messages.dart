// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a messages locale. All the
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
  String get localeName => 'messages';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function> {
    "AuthI18n_login" : MessageLookupByLibrary.simpleMessage("Login"),
    "AuthI18n_loginRequired" : MessageLookupByLibrary.simpleMessage("Login required"),
    "AuthI18n_password" : MessageLookupByLibrary.simpleMessage("Password"),
    "AuthI18n_passwordRequired" : MessageLookupByLibrary.simpleMessage("The password must not be empty"),
    "AuthI18n_signIn" : MessageLookupByLibrary.simpleMessage("Sign In"),
    "CoreI18n_forbiddenError" : MessageLookupByLibrary.simpleMessage("Forbidden"),
    "CoreI18n_internalError" : MessageLookupByLibrary.simpleMessage("Internal Error"),
    "CoreI18n_notFoundError" : MessageLookupByLibrary.simpleMessage("Not found"),
    "CoreI18n_serviceUnavailableError" : MessageLookupByLibrary.simpleMessage("Service Unavaliable"),
    "CoreI18n_unknownError" : MessageLookupByLibrary.simpleMessage("Unknown Error"),
    "SplashI18n_title" : MessageLookupByLibrary.simpleMessage("Splash title")
  };
}
