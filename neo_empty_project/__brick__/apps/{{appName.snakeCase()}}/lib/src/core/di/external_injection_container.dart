import 'package:dependencies/dependencies.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

@module
abstract class ExternalDepsModule {
  @lazySingleton
  FlutterSecureStorage get flutterSecureStorage => const FlutterSecureStorage();

  @lazySingleton
  EventBus get eventBus => EventBus();
}
