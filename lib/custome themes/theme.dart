import 'package:flutter/material.dart';

class XApptheme {
  XApptheme();

  // light theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    // fontFamily: ,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
  );

  // dark theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
  );
}
