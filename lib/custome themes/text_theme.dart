import 'package:flutter/material.dart';

class XTextTheme {
  XTextTheme._();

  // lighttheme

  static TextTheme lightTextTheme = TextTheme(
    // headline texttheme
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

    // tittle text style
    titleLarge: const TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w600, color: Colors.black),
    titleMedium: const TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),
    titleSmall: const TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w400, color: Colors.black),
    
    // body texttheme

    bodyLarge: const TextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black),
    bodyMedium: const TextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.normal,color: Colors.black),
    bodySmall: const TextStyle().copyWith(fontSize: 14, fontWeight: FontWeight.w500,color: Colors.black),

    // label font styling
    labelLarge: const TextStyle().copyWith(fontSize: 12,fontWeight: FontWeight.normal, color: Colors.black),
    labelMedium: const TextStyle().copyWith(fontSize: 12,fontWeight: FontWeight.normal,color: Colors.black),

  );


    // darktheme

  static TextTheme darkTheme = TextTheme(
    // headline texttheme
    headlineLarge: TextStyle().copyWith(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headlineMedium: TextStyle().copyWith(
      fontSize: 25,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    headlineSmall: TextStyle().copyWith(
      fontSize: 15,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),

    // tittle text style
    titleLarge: const TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w600, color: Colors.white),
    titleMedium: const TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),
    titleSmall: const TextStyle().copyWith(fontSize: 16,fontWeight: FontWeight.w400, color: Colors.white),
    
    // body texttheme

    bodyLarge: const TextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white),
    bodyMedium: const TextStyle().copyWith(fontSize: 14,fontWeight: FontWeight.normal,color: Colors.white),
    bodySmall: const TextStyle().copyWith(fontSize: 14, fontWeight: FontWeight.w500,color: Colors.white),

    // label font styling
    labelLarge: const TextStyle().copyWith(fontSize: 12,fontWeight: FontWeight.normal, color: Colors.white),
    labelMedium: const TextStyle().copyWith(fontSize: 12,fontWeight: FontWeight.normal,color: Colors.white),
    
  );
}
