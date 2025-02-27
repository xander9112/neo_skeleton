abstract class Failure {
  Failure({required this.code, required this.message});

  final int code;
  final String message;

  String getLocalizedString();
}

class LocalFailure extends Failure {
  LocalFailure({required super.code, required super.message});

  @override
  String getLocalizedString() {
    return 'unknownError';
  }
}
