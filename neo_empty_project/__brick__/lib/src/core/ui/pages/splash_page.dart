import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}_ui_kit/{{name.snakeCase()}}_ui_kit.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({
    super.key,
    required this.progress,
    required this.onFinishSplash,
    this.showAnimation = true,
  });

  final BehaviorSubject<int> progress;

  final VoidCallback onFinishSplash;

  final bool showAnimation;

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  BehaviorSubject<int> get progress => widget.progress;

  VoidCallback get onFinishSplash => widget.onFinishSplash;

  bool get showAnimation => widget.showAnimation;

  Timer? _timer;

  int _start = 1;

  StreamSubscription<int>? listener;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      startTimer();
    });

    listener =
        progress.debounceTime(const Duration(seconds: 1)).listen((value) {
      if (value == 100 && !(_timer?.isActive ?? true)) {
        onFinishSplash();
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    listener?.cancel();
    super.dispose();
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);

    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 1) {
          setState(() {
            timer.cancel();

            if (progress.value == 100) {
              onFinishSplash();
            }
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<int>(
        stream: progress,
        builder: (context, snapshot) {
          return SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: Insets.l),
                    child: Text(
                      'Timer: $_start',
                      style: context.defaultText.displaySmall,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: Insets.l),
                    child: Text(
                      'Progress: ${snapshot.data}',
                      style: context.defaultText.displaySmall,
                    ),
                  ),
                  const UiProgressIndicator(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
