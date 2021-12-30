import 'package:shared_preferences/shared_preferences.dart';

///Controller for saving previously chosen theme choice data
class ThemePreference {
  static const themeStatus = 'THEME_STATUS';
  static const deviceThemeStatus = 'DEVICE_THEME_STATUS';

  late SharedPreferences _sharedPreferences;

  ///set user to dark theme
  void setDarkTheme(bool val) async {
    _sharedPreferences = await SharedPreferences.getInstance();
    _sharedPreferences.setBool(themeStatus, val);
  }

  ///get user manual dark theme choice
  Future<bool> getTheme() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    return _sharedPreferences.getBool(themeStatus) ?? false;
  }

}
