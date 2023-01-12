import 'package:flutter/material.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/core/ui/widgets/neo_progress_indicator.dart';

const _sizeOverlay = 55.0;

abstract class LoadingState<T extends StatefulWidget> extends State<T> {
  final LoadingOverlay loadingOverlay = LoadingOverlay();

  @override
  void dispose() {
    loadingOverlay.hide();

    super.dispose();
  }
}

class LoadingOverlay {
  OverlayEntry? _overlay;

  void show(BuildContext context) {
    if (_overlay == null) {
      _overlay = OverlayEntry(
        builder: (context) => Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.grey.withAlpha(50),
          child: Center(
            child: Container(
              width: _sizeOverlay,
              height: _sizeOverlay,
              decoration: BoxDecoration(
                border:
                    Border.all(width: 0.5, color: Colors.grey.withAlpha(50)),
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: NeoProgressIndicator(),
              ),
            ),
          ),
        ),
      );

      Overlay.of(context)?.insert(_overlay!);
    }
  }

  void hide() {
    if (_overlay != null) {
      _overlay?.remove();

      _overlay = null;
    }
  }
}
