String? toJsonDateTime(DateTime? value) {
  if (value != null) {
    return value.toString();
  }

  return null;
}

String toJsonDateTimeRequired(DateTime value) {
  return value.toString();
}

String? toJsonEscape(String? value) {
  return value?.replaceAll('"', r'\"');
}
