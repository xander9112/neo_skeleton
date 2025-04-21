import 'package:flutter/material.dart';

class NotifyService {
  static GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();

  static void _showSnackBar({
    required Widget content,
    required Duration duration,
    required bool hideOnSwipe,
  }) {
    scaffoldMessengerKey.currentState?.showSnackBar(
      SnackBar(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        content: Center(
          child: SizedBox(
            width: double.infinity,
            height: 90,
            child: content,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        showCloseIcon: false,
        duration: duration,
        dismissDirection:
            hideOnSwipe ? DismissDirection.down : DismissDirection.none,
      ),
    );
  }

  static void showNotify({
    required Widget notify,
    Duration duration = const Duration(seconds: 3),
    bool hideOnSwipe = true,
  }) {
    _showSnackBar(
      content: notify,
      duration: duration,
      hideOnSwipe: hideOnSwipe,
    );
  }
}
