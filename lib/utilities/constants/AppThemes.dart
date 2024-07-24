import 'package:flutter/material.dart';

class AppThemes {
  static final lightTheme = ThemeData(
    useMaterial3: true,
    primaryColor: Color(0xFFCC5803), // Main Color
    primaryColorLight: Color(0xFFFF9C00), // Secondary Color
    scaffoldBackgroundColor: Colors.white, // Background Color
    primaryColorDark: Color(0xFF121212), // Text Color
    indicatorColor: Color(0xFFD9D9D9), // Border Color
  );
  static final darkTheme = ThemeData(
    useMaterial3: true,
    primaryColor: Color(0xFFCC5803),
    primaryColorLight: Color(0xFFFF9C00),
    scaffoldBackgroundColor: Colors.black,
    primaryColorDark: Color(0xFF121212),
    indicatorColor: Color(0xFFD9D9D9),
  );
}
