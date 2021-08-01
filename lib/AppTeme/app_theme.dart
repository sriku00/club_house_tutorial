import 'package:club_house_tutorial/config/palette.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  appTheme() {
    return ThemeData(
      appBarTheme: const AppBarTheme(backgroundColor: Palette.background),
      scaffoldBackgroundColor: Palette.background,
      primaryColor: Colors.white,
      accentColor: Palette.green,
      iconTheme: const IconThemeData(color: Colors.black),
      fontFamily: GoogleFonts.montserrat().fontFamily,
      textTheme: GoogleFonts.montserratTextTheme(),
    );
  }
}
