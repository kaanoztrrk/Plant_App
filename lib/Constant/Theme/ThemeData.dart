import 'package:flutter/material.dart';

class ITheme {
  ThemeData defaultTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey[200],
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      color: Colors.transparent,
      elevation: 0,
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(),
      displayMedium: TextStyle(),
      displaySmall: TextStyle(),
      headlineLarge: TextStyle(),
      headlineMedium:
          TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      headlineSmall: TextStyle(fontWeight: FontWeight.bold),
      titleLarge: TextStyle(fontWeight: FontWeight.bold),
      titleMedium: TextStyle(),
      titleSmall: TextStyle(color: Colors.white),
      bodyLarge: TextStyle(),
      bodyMedium: TextStyle(),
      bodySmall: TextStyle(),
    ),
  );
}
