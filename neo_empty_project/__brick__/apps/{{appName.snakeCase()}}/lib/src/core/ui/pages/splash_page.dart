import 'dart:async';

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:ui_kit/ui_kit.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key, this.onResult});

  final void Function(bool isSuccess)? onResult;

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  BehaviorSubject<int> get progress => AppInitializer.progress;

  bool isAnimationFinished = false;

  Timer? _timer;

  int _start = 2; // min 2 seconds

  StreamSubscription<int>? listener;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      startTimer();
    });

    listener =
        progress.debounceTime(const Duration(seconds: 1)).listen((value) {
      if (value == 100 && isAnimationFinished) {
        onFinish();
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    listener?.cancel();

    super.dispose();
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

  void startTimer() {
    const oneSec = Duration(seconds: 1);

    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 1) {
          setState(() {
            timer.cancel();

            if (progress.value == 100) {
              onAnimationFinish();
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

  void onAnimationFinish() {
    setState(() {
      isAnimationFinished = true;
    });

    if (AppInitializer.progress.value == 100) {
      onFinish();
    }
  }

  void onFinish() {
    if (widget.onResult != null) {
      widget.onResult?.call(true);
    } else {
      AppInitializer.onFinishSplash();
    }
  }
}
