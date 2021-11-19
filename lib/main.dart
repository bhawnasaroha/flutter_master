import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const FlutterMaster());
}

class FlutterMaster extends StatelessWidget {
  const FlutterMaster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: const HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.purple,
          // primaryTextTheme: GoogleFonts.latoTextTheme(),
          fontFamily: GoogleFonts.lato().fontFamily),
      darkTheme: ThemeData(
        primarySwatch: Colors.deepPurple,
        brightness: Brightness.dark,
      ),
      // initialRoute: "/home",
      routes: {
        "/": (BuildContext context) => const LoginPage(),
        "/home": (BuildContext context) => const HomePage(),
        "/login": (BuildContext context) => const LoginPage(),
      },
    );
  }
}
