// import 'package:flutter/material.dart';

// class GetDeviceLocale extends StatefulWidget {
//   const GetDeviceLocale({super.key, this.child});

//   final Widget? child;

//   @override
//   State<GetDeviceLocale> createState() => _GetDeviceLocaleState();
// }

// class _GetDeviceLocaleState extends State<GetDeviceLocale> {
//   late final AppLifecycleListener _listener;

//   @override
//   void initState() {
//     super.initState();
//     _listener = AppLifecycleListener(
//       onResume: () {
//         setLocale(context);
//       },
//     );

//     WidgetsBinding.instance.addPostFrameCallback((_) => setLocale(context));
//   }

//   @override
//   void dispose() {
//     _listener.dispose();

//     super.dispose();
//   }

//   void setLocale(BuildContext context) {
//     final Locale locale = Localizations.localeOf(context);

//     context
//         .read<DevicePreferencesBloc>()
//         .add(DevicePreferencesEvent.setLocale(locale));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(child: widget.child);
//   }
// }
