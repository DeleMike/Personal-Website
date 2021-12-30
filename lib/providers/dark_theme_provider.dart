import 'package:flutter/foundation.dart';

import '../utils/theme_pref.dart';

///Controller for wide app themeing
class DarkThemeProvider with ChangeNotifier {
  ///
  ThemePreference themePreference = ThemePreference();
  bool _darkTheme = false;

  ///get if dark theme should be applied
  bool get darkTheme => _darkTheme;

  ///set the desired theme type by returning
  ///```true``` for dark theme or ```false``` for light theme
  set darkTheme(bool value) {
    print('Set Dark Mode On:  $value');
    _darkTheme = value;
    themePreference.setDarkTheme(value);
    notifyListeners();
  }
}
