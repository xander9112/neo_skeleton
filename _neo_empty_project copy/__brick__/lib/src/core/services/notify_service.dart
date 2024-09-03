import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}_ui_kit/{{name.snakeCase()}}_ui_kit.dart';

abstract class NotifyService {
  static Future<void> _showSnackBar(
    Color color, {
    String? title,
    String? text,
  }) async {
    AppGlobalKeys.scaffoldMessengerKey.currentState?.showSnackBar(
      SnackBar(
        content: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(Insets.l),
          decoration: BoxDecoration(
            color: color.withOpacity(0.5),
            border: Border.all(color: color, width: 2),
            borderRadius: BorderRadius.circular(Insets.l),
          ),
          child: _showMessage(text: text, title: title),
        ),
        margin: EdgeInsets.zero,
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.transparent,
        elevation: 0,
        showCloseIcon: false,
      ),
    );
  }

  static Future<void> success({
    String? title,
    String? text,
  }) async {
    await _showSnackBar(
      Colors.green,
      text: text,
      title: title,
    );
  }

  static Future<void> error({
    String? title,
    String? text,
  }) async {
    await _showSnackBar(
      Colors.red,
      text: text,
      title: title,
    );
  }

  static Future<void> info({
    String? title,
    String? text,
  }) async {
    await _showSnackBar(
      Colors.blue,
      text: text,
      title: title,
    );
  }

  static Future<void> warning({
    String? title,
    String? text,
  }) async {
    await _showSnackBar(
      Colors.orangeAccent,
      text: text,
      title: title,
    );
  }

  static Widget _showMessage({
    String? title,
    String? text,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (title != null)
                Text(
                  title,
                  style: const TextStyle(fontSize: 18),
                ),
              if (title != null) const SizedBox(height: Insets.s),
              if (text != null) Text(text),
            ],
          ),
        ),
        GestureDetector(
          child: const Icon(Icons.close),
          onTap: () {
            AppGlobalKeys.scaffoldMessengerKey.currentState
                ?.hideCurrentSnackBar();
          },
        ),
      ],
    );
  }
}
