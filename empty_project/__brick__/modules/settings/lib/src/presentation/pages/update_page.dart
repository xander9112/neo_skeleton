import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:settings/src/_src.dart';

@RoutePage()
class UpdatePage extends StatefulWidget {
  const UpdatePage({super.key});

  @override
  State<UpdatePage> createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        if (!context.read<SettingsCubit>().state.hasUpdate) {
          context.router.replaceNamed('/');
        }
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) {
        if (!state.hasUpdate) {
          return const SizedBox.shrink();
        }

        return Title(
          color: Colors.black,
          title: SettingsI18n.update,
          child: Scaffold(
            appBar: AppBar(title: Text(SettingsI18n.update)),
            body: Center(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Update'),
              ),
            ),
          ),
        );
      },
    );
  }
}
