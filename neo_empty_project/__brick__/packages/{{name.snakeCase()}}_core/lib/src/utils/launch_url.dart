import 'package:url_launcher/url_launcher.dart';

Future<bool> launchURL(
  Uri uri, {
  LaunchMode mode = LaunchMode.platformDefault,
}) async {
  try {
    return await launchUrl(uri, mode: mode);
  } catch (_) {
    return false;
  }
}
