import 'package:flutter/material.dart';

const COLOR_PRIMARY = Colors.green;
const CUSTOM_GREEN = Color.fromARGB(255, 159, 201, 0);
const LIGHT_ACCENT = Colors.green;

// frostee
// const LIGHT_BACKGROUND = Color(0xFFE4F6E7);
// willow brook
const LIGHT_BACKGROUND = Color(0xFFDFECDA);

ThemeData lightTheme = ThemeData(
  brightness:  Brightness.light,
  scaffoldBackgroundColor: LIGHT_BACKGROUND,
  floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: LIGHT_ACCENT
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
    bodyMedium: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
    bodySmall: TextStyle(color: Colors.black),
    headlineMedium: TextStyle(color: Colors.green),
    // You can also modify other styles like headline1, headline2, etc.
  ),
  iconButtonTheme: IconButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStateProperty.all(Colors.blueAccent),
    ),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness:  Brightness.dark,
  primaryColor: COLOR_PRIMARY,
  textTheme: TextTheme(
    bodyMedium: TextStyle(color: LIGHT_BACKGROUND)
  ),
  iconButtonTheme: IconButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStateProperty.all(CUSTOM_GREEN),
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: CUSTOM_GREEN
  ),
);