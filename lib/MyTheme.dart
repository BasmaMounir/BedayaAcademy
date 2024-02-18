import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static Color DodgerBlue = Color(0xff2C8FBA);
  static Color PersianRose = Color(0xffB72173);
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Color(0xffF5F9FF),
      textTheme: TextTheme(
          bodyMedium: GoogleFonts.jost(
              fontSize: 18, fontWeight: FontWeight.w700, color: Colors.white)));
}
