import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const COLOR_PRIMARY = Colors.green;
const CUSTOM_GREEN = Color.fromARGB(255, 159, 201, 0);
const COMPLEMENT_PURPLE = Color.fromARGB(255, 109, 88, 255);
const BLUE = Colors.lightBlueAccent;
const MOONCOLOR = Colors.deepPurpleAccent;

// Background Colors
const BLACK_GREY = Color(0xFF1E1E1E);
const DARK_GREY = Color(0xFF262626);
const MEDIUM_GREY = Color(0xFF363636);
const LIGHT_GREY = Color(0xFF8A8F8A);
const LIGHT_ACCENT = Colors.green;

// Icon Colors
final DARK_ICON = Colors.grey[800];
final DARK_ICON_TXT = Colors.grey[500];
final LIGHT_ICON = Colors.grey[500];
final LIGHT_ICON_TXT = Colors.grey[700];

// Text Colors
final GREY500 = Colors.grey[500];
final GREY600 = Colors.grey[600];
const DARK_TITLE = Colors.white;
final DARK_TXT = Colors.grey[200];
const LIGHT_TITLE = Colors.black;
const LIGHT_Txt = Colors.black;

const WHITE = Colors.white;
// frostee
const FROSTEE = Color(0xFFE4F6E7);
// willow brook
const LIGHT_BACKGROUND = Color(0xFFDFECDA);


/*
  LIGHT THEME styling and colors
*/
ThemeData lightTheme = ThemeData(
  brightness:  Brightness.light,
  scaffoldBackgroundColor: LIGHT_BACKGROUND,

  appBarTheme: AppBarThemeData(
    backgroundColor: WHITE,
  ),

  floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: LIGHT_ACCENT
  ),

  iconTheme: IconThemeData(
    color: LIGHT_ICON,
  ),

  iconButtonTheme: IconButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStateProperty.all(MOONCOLOR),
    ),
  ),

  // AppBar textbutton ~ line 145
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStatePropertyAll(Colors.black)
    )
  ),

  textTheme: TextTheme(
    displayMedium: TextStyle(color: LIGHT_TITLE, fontWeight: FontWeight.w900),
    displaySmall: TextStyle(color: Colors.black, fontWeight: FontWeight.w100,
      fontSize: 19, height: 1.5,
    ),
    bodySmall: GoogleFonts.sora(color: LIGHT_ICON_TXT, fontSize: 13,fontWeight: FontWeight.w600),


    bodyLarge: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
    bodyMedium: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
    // bodyMedium: GoogleFonts.robotoFlex(color: Colors.black, fontWeight: FontWeight.w600),



    headlineMedium: TextStyle(color: Colors.green),
    // You can also modify other styles like headline1, headline2, etc.
  ),
);



/*
  DARK THEME styling and colors
*/
ThemeData darkTheme = ThemeData(
  brightness:  Brightness.dark,
  primaryColor: COLOR_PRIMARY,

  appBarTheme: AppBarThemeData(
    backgroundColor: DARK_GREY,
  ),

  iconTheme: IconThemeData(
    color: DARK_ICON,
  ),

  iconButtonTheme: IconButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStateProperty.all(CUSTOM_GREEN),
    ),
  ),

  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: CUSTOM_GREEN
  ),

  // AppBar textbutton ~ line 145
  textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
          foregroundColor: WidgetStatePropertyAll(Colors.grey[500])
      )
  ),

  textTheme: TextTheme(
      // displaySmall: TextStyle(color: LIGHT_GREY, fontWeight: FontWeight.w100,
      //     fontSize: 20,
      // ),
      displayMedium: TextStyle(color: DARK_TITLE, fontWeight: FontWeight.w900),
      displaySmall: GoogleFonts.roboto(color: DARK_TXT, fontWeight: FontWeight.w300,
        fontSize: 19, height: 1.5, wordSpacing: 1.0
      ),
      bodySmall: GoogleFonts.sora(color: DARK_ICON_TXT, fontSize: 13,fontWeight: FontWeight.w600),

      bodyMedium: TextStyle(color: LIGHT_BACKGROUND)
  ),
);