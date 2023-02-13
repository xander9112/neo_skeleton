import 'dart:async';

typedef DialogListener = Future<dynamic> Function({
  required int dialogType,
  required Completer<dynamic> completer,
  String? title,
  String? body,
  dynamic params,
});
