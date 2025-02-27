import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class PinCodePoints extends StatefulWidget {
  const PinCodePoints({
    required this.pinCodeLength,
    required this.pinFilledCodeLength,
    required this.hasError,
    required this.isLoading,
    super.key,
  });

  final int pinCodeLength;
  final int pinFilledCodeLength;
  final bool hasError;
  final bool isLoading;

  @override
  State<PinCodePoints> createState() => _PinCodePointsState();
}

class _PinCodePointsState extends State<PinCodePoints>
    with TickerProviderStateMixin {
  late AnimationController controller;

  late Animation<double> animation;

  @override
  void initState() {
    controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    animation = Tween<double>(begin: widget.pinCodeLength.toDouble(), end: 0)
        .animate(controller)
      ..addListener(() async {
        setState(() {});
      })
      ..addStatusListener((AnimationStatus status) async {
        if (status == AnimationStatus.completed) {
          await controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          await Future<dynamic>.delayed(const Duration(milliseconds: 250));
          await controller.forward();
        }
      });

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant PinCodePoints oldWidget) {
    if (oldWidget.isLoading != widget.isLoading && widget.isLoading) {
      Future<void>.delayed(const Duration(milliseconds: 250)).then((_) {
        if (mounted) {
          controller.forward();
        }
      });
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isLoading) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List<Widget>.generate(
          widget.pinCodeLength,
          (int index) => _Point(
            hasError: widget.hasError,
            isFilled: index < animation.value.toInt(),
          ),
        ),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List<Widget>.generate(
        widget.pinCodeLength,
        (int index) => _Point(
          hasError: widget.hasError,
          isFilled: index < widget.pinFilledCodeLength,
        ),
      ),
    );
  }
}

class _Point extends StatelessWidget {
  const _Point({
    required this.hasError,
    required this.isFilled,
  });

  final bool hasError;
  final bool isFilled;

  @override
  Widget build(BuildContext context) {
    var bgColor = Colors.transparent;

    if (isFilled) {
      bgColor = context.colorScheme.primary;
    }

    if (hasError) {
      bgColor = context.colorScheme.error;
    }

    return Container(
      width: 20,
      height: 20,
      margin: const EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(96),
        border: Border.all(
          color: context.theme.textTheme.titleMedium!.color!
              .withValues(alpha: isFilled || hasError ? 0.0 : 0.6),
        ),
      ),
    );
  }
}
