import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class UiCommonDialog extends StatelessWidget {
  const UiCommonDialog({
    super.key,
    this.image,
    this.imageWidget,
    this.title,
    this.body,
    this.button,
    this.padding,
    this.textAlign = TextAlign.left,
  });

  final TextAlign textAlign;
  final String? image;
  final Widget? imageWidget;
  final String? title;
  final List<Widget>? body;
  final Widget? button;
  final EdgeInsetsGeometry? padding;

  static Widget description(
    BuildContext context,
    String? text, {
    TextAlign textAlign = TextAlign.left,
  }) {
    if (text == null) {
      return Container();
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: Insets.l),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyLarge,
        textAlign: textAlign,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: 480,
          maxHeight: MediaQuery.of(context).size.height * 0.6,
        ),
        padding: padding ??
            const EdgeInsets.symmetric(
              vertical: Insets.xl,
              horizontal: Insets.xxl,
            ),
        child: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              if (imageWidget != null)
                Padding(
                  padding: const EdgeInsets.only(bottom: Insets.xl),
                  child: Align(child: imageWidget),
                ),
              if (title != null)
                Padding(
                  padding: const EdgeInsets.only(bottom: Insets.l),
                  child: Text(
                    title!,
                    style: Theme.of(context).textTheme.titleLarge,
                    textAlign: textAlign,
                  ),
                ),
              if (body != null && body!.isNotEmpty) ...body!,
              if (button != null)
                Padding(
                  padding: EdgeInsets.only(
                    top: body != null && body!.isNotEmpty
                        ? Insets.l
                        : Insets.zero,
                  ),
                  child: button,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
