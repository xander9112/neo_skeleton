import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{name.snakeCase()}}/src/core/features/settings/_settings.dart';

class GetDevicePreferences extends StatefulWidget {
  const GetDevicePreferences({super.key, this.child = const SizedBox()});

  final Widget child;

  @override
  State<GetDevicePreferences> createState() => _GetDevicePreferencesState();
}

class _GetDevicePreferencesState extends State<GetDevicePreferences> {
  late final AppLifecycleListener _listener;

  @override
  void initState() {
    super.initState();
    _listener = AppLifecycleListener(
      onResume: () {
        setLocale(context);
      },
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setLocale(context));
  }

  @override
  void dispose() {
    _listener.dispose();

    super.dispose();
  }

  void setLocale(BuildContext context) {
    if (context.read<SettingsCubit>().state.locale == null) {
      final Locale locale = Localizations.localeOf(context);

      context.read<SettingsCubit>().setLocale(locale);
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
