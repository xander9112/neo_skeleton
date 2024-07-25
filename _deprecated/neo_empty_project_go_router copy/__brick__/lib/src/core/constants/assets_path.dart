const String _iconsPath = 'assets/icons';

class AppIcons {
  const AppIcons();

  String get fingerprint => '$_iconsPath/fingerprint.svg';
  String get face => '$_iconsPath/face_id.svg';
}

class Assets {
  static const AppIcons icons = AppIcons();
}
