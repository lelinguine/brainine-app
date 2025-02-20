import 'package:flutter/material.dart';

extension MyContextExtension on BuildContext {
  String get customTitle => 'Brainine';

  bool isDark() {
    return MediaQuery.of(this).platformBrightness == Brightness.dark;
  }

  String getAssets() {
    String assets = 'lib/assets/';
    if (isDark()) {
      return '${assets}dark/';
    }
    return '${assets}light/';
  }
}
