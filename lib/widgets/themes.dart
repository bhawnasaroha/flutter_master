import 'package:flutter/material.dart';
import 'package:flutter_master/utils/color.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData get lightTheme => ThemeData(
        primarySwatch: CreateColor.createMaterialColor(
          primaryColor,
        ),
        primaryColor: Colors.black,
        fontFamily: GoogleFonts.righteous().fontFamily,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          titleTextStyle: TextStyle(
            color: Colors.black,
          ),
        ),
      );

  static ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,
      );

  // Colors
  static Color primaryColor = Color(0xFF6B62FF);
  static Color creamColor = Color(0xFFf5f5f5);
  static Color darkBluish = Color(0xFF403b58);
}
