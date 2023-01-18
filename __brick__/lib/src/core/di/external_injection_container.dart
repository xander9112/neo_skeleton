// ignore_for_file: cascade_invocations

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';

final slExternal = GetIt.instance;

Future<void> init() async {
  slExternal.registerLazySingleton(FlutterSecureStorage.new);
}
