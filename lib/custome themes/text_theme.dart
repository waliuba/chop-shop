import 'package:flutter/material.dart';

class XTextTheme {
  XTextTheme._();

  // lighttheme

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: TextStyle().copyWith(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    headlineMedium: TextStyle().copyWith(
      fontSize: 25,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    headlineSmall: TextStyle().copyWith(
      fontSize: 15,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
  );
}
