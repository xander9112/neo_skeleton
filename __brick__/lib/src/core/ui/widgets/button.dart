import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

enum _ButtonType {
  primary,
  outline,
  text;

  bool get isPrimary => this == primary;
  bool get isOutline => this == outline;
  bool get isText => this == text;
}

class UiButton extends StatelessWidget {
  const UiButton({
    required this.text,
    this.onPressed,
    this.suffixIcon,
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.disabled = false,
  }) : _type = _ButtonType.primary;
  const UiButton.outline({
    required this.text,
    this.onPressed,
    this.suffixIcon,
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.disabled = false,
  }) : _type = _ButtonType.outline;

  const UiButton.text({
    required this.text,
    this.onPressed,
    this.suffixIcon,
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.disabled = false,
  }) : _type = _ButtonType.text;

  final String text;
  final VoidCallback? onPressed;
  final Widget? suffixIcon;
  final MainAxisAlignment mainAxisAlignment;
  final bool disabled;
  final _ButtonType _type;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: Insets.l),
      child: SizedBox(
        width: double.infinity,
        child: Builder(
          builder: (BuildContext context) {
            if (_type.isOutline) {
              return OutlinedButton(
                onPressed: onPressed,
                child: Text(text),
              );
            }

            if (_type.isText) {
              return TextButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Theme.of(context).primaryColor,
                ),
                onPressed: onPressed,
                child: Text(text, overflow: TextOverflow.ellipsis),
              );
            }

            return ElevatedButton(
              onPressed: disabled ? null : onPressed,
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
                    Theme(
                      data: ThemeData(
                        iconTheme: Theme.of(context).iconTheme,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: Insets.s),
                        child: suffixIcon,
                      ),
                    ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
