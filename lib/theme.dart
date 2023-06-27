import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var appTheme = ThemeData(
    fontFamily: GoogleFonts.nunito().fontFamily,
    brightness: Brightness.dark,
    textTheme: const TextTheme(
        bodyMedium: TextStyle(fontSize: 18),
        bodySmall: TextStyle(fontSize: 16),
        labelSmall: TextStyle(letterSpacing: 5, fontWeight: FontWeight.bold),
        headlineLarge: TextStyle(fontWeight: FontWeight.bold),
        titleSmall: TextStyle(color: Colors.grey)),
    buttonTheme: const ButtonThemeData());
