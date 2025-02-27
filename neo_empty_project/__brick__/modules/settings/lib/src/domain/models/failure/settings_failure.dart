import 'package:core/core.dart';

class SettingsFailure extends Failure {
  SettingsFailure({
    required super.code,
    required super.message,
  });

  @override
  String getLocalizedString() {
    throw UnimplementedError();
  }
}
