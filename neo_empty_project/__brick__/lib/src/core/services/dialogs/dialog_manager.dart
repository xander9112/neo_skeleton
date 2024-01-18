import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class DialogManager extends StatefulWidget {
  const DialogManager({required this.router, this.child, super.key});

  final AppRouter router;

  final Widget? child;

  @override
  State<DialogManager> createState() => _DialogManagerState();
}

class _DialogManagerState extends State<DialogManager> {
  final DialogService _dialogService = GetIt.I();

  BuildContext get _context => widget.router.context;

  @override
  void initState() {
    super.initState();

    _dialogService.registerDialogListener(_showDialog());
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
        required int dialogType,
        required Completer<dynamic> completer,
        String? title,
        String? body,
        dynamic params,
      }) async {
        dynamic result;

        switch (dialogType) {
          case DialogTypes.updateDialog:
            result = await UiUpdateDialog.showCurrentDialog<dynamic>(
              _context,
              params,
            );
          case DialogTypes.engineeringWorks:
            result = await UiEngineeringWorksDialog.showCurrentDialog<dynamic>(
              _context,
              params,
            );
          case DialogTypes.confirmDialog:
            result = await UiConfirmDialog.showCurrentDialog<dynamic>(
              _context,
              title: title,
              body: body,
              params: params,
            );
          case DialogTypes.selectDialog:
            result = await UiSelectDialog.showCurrentDialog(
              _context,
              title: title,
              body: body,
              params: params,
            );
          default:
        }

        return completer.complete(result);
      };
}
