import 'package:flutter/material.dart';

class NeoProgressIndicator extends StatelessWidget {
  const NeoProgressIndicator({
    super.key,
    this.value,
    this.isCenter = true,
    this.fullScreen = false,
    this.size = 36,
    this.additionalText,
  });

  final double? value;
  final double size;
  final bool isCenter;
  final bool fullScreen;
  final Widget? additionalText;

  @override
  Widget build(BuildContext context) {
    const Widget loader = CircularProgressIndicator.adaptive();

    if (fullScreen) {
      return Container(
        width: double.infinity,
        height: double.infinity,
        color: Theme.of(context).backgroundColor.withOpacity(0.8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            loader,
            if (additionalText != null)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: additionalText,
              ),
          ],
        ),
      );
    }

    if (isCenter) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            loader,
            if (additionalText != null)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: additionalText,
              ),
          ],
        ),
      );
    }

    return loader;
  }
}
