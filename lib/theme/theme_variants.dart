import 'package:flutter/material.dart';

const COLOR_PRIMARY = Colors.green;
const DARK_ACCENT = Color.fromARGB(255, 159, 201, 0);
const LIGHT_ACCENT = Color.fromARGB(77, 60, 152, 0);

ThemeData lightTheme = ThemeData(
    brightness:  Brightness.light
);

ThemeData darkTheme = ThemeData(
  brightness:  Brightness.dark,
  primaryColor: COLOR_PRIMARY,
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: DARK_ACCENT
  )
);