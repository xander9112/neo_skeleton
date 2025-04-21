import 'dart:async';

import 'package:flutter/foundation.dart';

class Debouncer {
  Debouncer({required this.milliseconds});

  final int milliseconds;

  late VoidCallback action;
  Timer? _timer;

  void call(VoidCallback action) {
    _timer?.cancel();
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }
}
