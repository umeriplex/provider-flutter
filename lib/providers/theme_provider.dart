import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  var _themeMode = ThemeMode.light;

  get themeMode => _themeMode;

  void setTheme(theme) {
    _themeMode = theme;
    notifyListeners();
  }
}
