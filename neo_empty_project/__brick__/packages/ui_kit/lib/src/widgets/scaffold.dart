import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class NeoScaffold extends StatelessWidget {
  const NeoScaffold({
    super.key,
    this.currentKey,
    this.appBar,
    this.body,
    this.bottomNavigationBar,
    this.onDrawerChanged,
    this.drawer,
    this.floatingActionButton,
    this.backgroundColor,
  });

  final PreferredSizeWidget? appBar;
  final Widget? body;
  final Widget? bottomNavigationBar;
  final DrawerCallback? onDrawerChanged;
  final Widget? drawer;
  final Key? currentKey;
  final Widget? floatingActionButton;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    double padding = MediaQuery.of(context).padding.bottom;

    if (padding > 0) {
      padding = Insets.xxl + Insets.s;
    } else {
      padding = Insets.bottomNavBar;
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: appBar,
      key: currentKey,
      drawer: drawer,
      onDrawerChanged: onDrawerChanged,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          if (body != null) body!,
          if (bottomNavigationBar != null) bottomNavigationBar!,
        ],
      ),
      floatingActionButton: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.only(bottom: padding),
          child: floatingActionButton,
        ),
      ),
    );
  }
}
