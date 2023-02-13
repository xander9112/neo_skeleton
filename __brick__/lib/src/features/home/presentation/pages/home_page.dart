import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Home page',
              style: context.defaultText.displaySmall,
            ),
          ],
        ),
      ),
    );
  }
}
