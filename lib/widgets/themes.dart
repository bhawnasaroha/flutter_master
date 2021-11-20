import 'package:flutter/material.dart';
import 'package:flutter_master/utils/color.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class MyTheme {
  static ThemeData get lightTheme => ThemeData(
        primarySwatch: CreateColor.createMaterialColor(
          primaryColor,
        ),
        primaryColor: Colors.black,
        fontFamily: GoogleFonts.lato().fontFamily,
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
}
