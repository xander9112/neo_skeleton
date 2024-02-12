import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class DialogManager extends StatefulWidget {
  const DialogManager({
    required this.dialogService,
    required this.router,
    this.child,
    super.key,
  });

  final AppRouter router;

  final DialogService dialogService;

  final Widget? child;

  @override
  State<DialogManager> createState() => _DialogManagerState();
}

class _DialogManagerState extends State<DialogManager> {
  @override
  void initState() {
    super.initState();

    widget.dialogService.registerDialogListener(_showDialog());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(child: widget.child);
  }

  DialogListener _showDialog() => ({
        required Widget child,
        required Completer<dynamic> completer,
        bool barrierDismissible = true,
        bool useSafeArea = true,
        bool useRootNavigator = true,
        RouteSettings? routeSettings,
      }) async {
        dynamic result;

        result = await showDialog<dynamic>(
          context: widget.router.context,
          barrierDismissible: barrierDismissible,
          useSafeArea: useSafeArea,
          useRootNavigator: useRootNavigator,
          routeSettings: routeSettings,
          builder: (BuildContext context) => child,
        );

        return completer.complete(result);
      };
}
