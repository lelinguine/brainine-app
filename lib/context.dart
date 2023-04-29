import 'package:flutter/material.dart';

extension MyContextExtension on BuildContext {
  String get customTitle => 'Brainine';

  bool isDark() {
    return MediaQuery.of(this).platformBrightness == Brightness.light;
  }

  String getAssets() {
    if (isDark()) {
      return 'lib/assets/dark/';
    }
    return 'lib/assets/light/';
  }
}
