import 'package:flutter/material.dart';

const COLOR_PRIMARY = Colors.green;
const CUSTOM_GREEN = Color.fromARGB(255, 159, 201, 0);
const COMPLEMENT_PURPLE = Color.fromARGB(255, 109, 88, 255);
const BLUE = Colors.blue;

const DARK_GREY = Color(0xFF1E1E1E);
const MEDIUM_GREY = Color(0xFF262626);
const LIGHT_GREY = Color(0xFF8A8F8A);
const LIGHT_ACCENT = Colors.green;

const WHITE = Colors.white;
// frostee
const FROSTEE = Color(0xFFE4F6E7);
// willow brook
const LIGHT_BACKGROUND = Color(0xFFDFECDA);



// LIGHT THEME
ThemeData lightTheme = ThemeData(
  brightness:  Brightness.light,
  scaffoldBackgroundColor: LIGHT_BACKGROUND,

  appBarTheme: AppBarThemeData(
    backgroundColor: WHITE,
  ),

  floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: LIGHT_ACCENT
  ),

  iconButtonTheme: IconButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStateProperty.all(BLUE),
    ),
  ),

  // AppBar textbutton ~ line 145
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStatePropertyAll(Colors.black)
    )
  ),

  textTheme: TextTheme(
    bodyLarge: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
    bodyMedium: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
    bodySmall: TextStyle(color: Colors.black),
    headlineMedium: TextStyle(color: Colors.green),
    // You can also modify other styles like headline1, headline2, etc.
  ),
);



// DARK THEME
ThemeData darkTheme = ThemeData(
  brightness:  Brightness.dark,
  primaryColor: COLOR_PRIMARY,

  appBarTheme: AppBarThemeData(
    backgroundColor: MEDIUM_GREY,
  ),

  iconButtonTheme: IconButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStateProperty.all(CUSTOM_GREEN),
    ),
  ),

  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: CUSTOM_GREEN
  ),

  textTheme: TextTheme(
      bodyMedium: TextStyle(color: LIGHT_BACKGROUND)
  ),
);