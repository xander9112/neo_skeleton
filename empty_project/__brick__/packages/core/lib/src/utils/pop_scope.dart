// import 'package:flutter/widgets.dart';

// class CustomPopScope extends StatefulWidget {
//   const CustomPopScope({
//     required this.onPopInvoke,
//     required this.child,
//     super.key,
//   });

//   final void Function(bool didPop) onPopInvokedWithResult;
//   final Widget child;

//   @override
//   State<CustomPopScope> createState() => _CustomPopScopeState();
// }

// class _CustomPopScopeState extends State<CustomPopScope> {
//   bool _canPop = false;

//   Future<void> _onPopInvokedWithResult(bool didPop) async {
//     if (didPop) {
//       return;
//     }

//     _canPop = await widget.onPopInvokedWithResult(didPop);

//     if (context.mounted && _canPop) {
//       Navigator.pop(context);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return PopScope(
//       canPop: _canPop,
//       onPopInvokedWithResult: (didPop, result) => _onPopInvokedWithResult(didPop),
//       child: widget.child,
//     );
//   }
// }
