import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'utils/routes.dart';
import 'utils/color.dart';

void main() {
  runApp(const FlutterMaster());
}

class FlutterMaster extends StatelessWidget {
  const FlutterMaster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: CreateColor.createMaterialColor(
            const Color(0xFF6B62FF),
          ),
          fontFamily: GoogleFonts.lato().fontFamily),
      darkTheme: ThemeData(
        primarySwatch: CreateColor.createMaterialColor(
          const Color(0xFF6B62FF),
        ),
        brightness: Brightness.dark,
      ),
      routes: {
        "/": (BuildContext context) => const LoginPage(),
        MyRoutes.homeRoute: (BuildContext context) => const HomePage(),
        MyRoutes.loginRoute: (BuildContext context) => const LoginPage(),
      },
    );
  }
}
