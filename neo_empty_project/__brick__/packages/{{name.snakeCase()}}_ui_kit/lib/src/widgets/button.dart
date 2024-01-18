import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}_ui_kit/{{name.snakeCase()}}_ui_kit.dart';

class UiButton extends StatelessWidget {
  const UiButton({
    required this.text,
    this.onPressed,
    this.suffixIcon,
    super.key,
    this.margin = const EdgeInsets.only(bottom: Insets.l),
    this.mainAxisAlignment = MainAxisAlignment.center,
  });

  final String text;
  final VoidCallback? onPressed;
  final Widget? suffixIcon;
  final MainAxisAlignment mainAxisAlignment;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: mainAxisAlignment,
            children: <Widget>[
              if (suffixIcon != null)
                Expanded(
                  child: Text(
                    text,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              else
                Text(
                  text,
                  overflow: TextOverflow.ellipsis,
                ),
              if (suffixIcon != null)
                Padding(
                  padding: const EdgeInsets.only(left: Insets.s),
                  child: suffixIcon,
                ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget outline({
    required String text,
    VoidCallback? onPressed,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: Insets.l),
      child: SizedBox(
        width: double.infinity,
        child: OutlinedButton(
          onPressed: onPressed,
          child: Text(text),
        ),
      ),
    );
  }
}
