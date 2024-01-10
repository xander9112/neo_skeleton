import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({required this.errorDetails, super.key});

  final FlutterErrorDetails errorDetails;

  @override
  Widget build(BuildContext context) {
    return Text(errorDetails.stack.toString());
  }
}
