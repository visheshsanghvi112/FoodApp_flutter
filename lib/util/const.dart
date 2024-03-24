import 'package:flutter/material.dart';

class Constants {
  static String appName = "Foody Bite";

  // Colors for theme
  static Color lightPrimary = Color(0xfffcfcff);
  static Color darkPrimary = Colors.black;
  static Color lightAccent = Color(0xff5563ff);
  static Color darkAccent = Color(0xff5563ff);
  static Color lightBG = Color(0xfffcfcff);
  static Color darkBG = Colors.black;
  static Color ratingBG = Colors.yellow;

  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.light(
      background: lightBG,
      primary: lightPrimary,
      secondary: lightAccent,
      onPrimary: darkBG,
      onBackground: darkBG,
    ),
    scaffoldBackgroundColor: lightBG,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: darkBG,
        fontSize: 18.0,
        fontWeight: FontWeight.w800,
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      background: darkBG,
      primary: darkPrimary,
      secondary: darkAccent,
      onPrimary: lightBG,
      onBackground: lightBG,
    ),
    scaffoldBackgroundColor: darkBG,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: lightBG,
        fontSize: 18.0,
        fontWeight: FontWeight.w800,
      ),
    ),
  );
}

