import 'package:flutter/material.dart';

///Used to manage app themeData based on either app's on
///Light Theme or Dark Theme
class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      primarySwatch: Colors.indigo,
    );
  }
}
