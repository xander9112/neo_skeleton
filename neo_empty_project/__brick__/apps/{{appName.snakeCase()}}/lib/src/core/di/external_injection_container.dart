import 'package:config/config.dart';
import 'package:core/core.dart';
import 'package:event_bus/event_bus.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';

class ExternalDI extends DI {
  static final GetIt sl = DI.sl;

  @override
  Future<void> initProviders(
    FlavorStatus flavor, {
    bool useMock = false,
  }) async {
    sl
      ..registerLazySingleton(FlutterSecureStorage.new)
      ..registerLazySingleton(EventBus.new);
  }
}
