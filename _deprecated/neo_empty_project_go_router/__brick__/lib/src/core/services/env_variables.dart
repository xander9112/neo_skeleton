import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvVariables {
  static Uri get apiUrl {
    const value = String.fromEnvironment('API_URL');

    if (value.isEmpty) {
      return Uri.parse(dotenv.get('API_URL', fallback: ''));
    }

    return Uri.parse(const String.fromEnvironment('API_URL'));
  }
}
