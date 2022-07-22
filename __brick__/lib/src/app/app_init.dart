import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import '../config/config.dart';

class AppInit {
  static Future<void> initCommon(
      [List<DeviceOrientation>? orientations]) async {
    WidgetsFlutterBinding.ensureInitialized();

    SystemChrome.setPreferredOrientations(
      orientations ??
          <DeviceOrientation>[
            DeviceOrientation.portraitUp,
            DeviceOrientation.portraitDown,
          ],
    );
  }

  static Future<void> initDependencies() async {
    return configureDependencies();
  }

  static Future<void> initLocalizations(
      Widget app, void Function(Widget app) onInit) async {
    await EasyLocalization.ensureInitialized();

    onInit(
      EasyLocalization(
        path: 'assets/translations',
        supportedLocales: AppLocalizations.supportedLocales,
        useOnlyLangCode: true,
        fallbackLocale: AppLocalizations.fallbackLocale,
        startLocale: AppLocalizations.startLocale,
        child: app,
      ),
    );
  }

  static Future<void> initEnvironments() async {
    return dotenv.load();
  }

  static Future<void> initStorage(VoidCallback onInit) async {
    HydratedStorage storage = await HydratedStorage.build(
      storageDirectory: kIsWeb
          ? HydratedStorage.webStorageDirectory
          : await getTemporaryDirectory(),
    );

    return HydratedBlocOverrides.runZoned(
      onInit,
      storage: storage,
      blocObserver: AppBlocObserver.instance(),
      eventTransformer: bloc_concurrency.sequential<Object?>(),
    );
  }
}
