import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData LightTheme = ThemeData(
      fontFamily: GoogleFonts.lato().fontFamily,
      appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 15)));
  static ThemeData Darktheme = ThemeData(
    brightness: Brightness.dark,
  );
}
