import 'package:flutter/material.dart';

import '../services/theme_prefs.dart';

class DarkThemeProvider with ChangeNotifier {
  DarkThemePref darkThemePref = DarkThemePref();
  bool _darkTmeme = false;
  bool get darkTheme => _darkTmeme;

  set setDarkTheme(bool value) {
    _darkTmeme = value;
    darkThemePref.setDarkTheme(value);
    notifyListeners();
  }
}
