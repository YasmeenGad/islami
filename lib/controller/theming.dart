import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static Color primaryColor = Color(0xFFB7935F);
  static Color blackColor = Color(0xFF242424);
  static Color primaryColordark = Color(0xFF141A2E);
  static Color secondColor = Color(0xFFFACC1D);
  static Color whiteColor = Colors.white;

  static ThemeData customlightTheme = ThemeData.light().copyWith(
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: blackColor,
        unselectedItemColor: Colors.white,
        backgroundColor: primaryColor,
      ),
      textTheme: TextTheme(
        bodySmall: GoogleFonts.elMessiri(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: blackColor,
        ),
        bodyMedium: GoogleFonts.elMessiri(
          fontSize: 25,
          fontWeight: FontWeight.w700,
          color: Color(0xFFFFFFFF),
        ),
        bodyLarge: GoogleFonts.elMessiri(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: blackColor,
        ),
      ),
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: primaryColor,
          ),
          centerTitle: true,
          color: Colors.transparent,
          elevation: 0.0));

  static ThemeData customdarkTheme = ThemeData.dark().copyWith(
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: secondColor,
        unselectedItemColor: Colors.white,
        backgroundColor: primaryColordark,
      ),
      textTheme: TextTheme(
        bodySmall: GoogleFonts.elMessiri(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: secondColor,
        ),
        bodyMedium: GoogleFonts.elMessiri(
          fontSize: 25,
          fontWeight: FontWeight.w700,
          color: Color(0xFFFFFFFF),
        ),
        bodyLarge: GoogleFonts.elMessiri(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: secondColor,
        ),
      ),
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: secondColor,
          ),
          centerTitle: true,
          color: Colors.transparent,
          elevation: 0.0));
}
