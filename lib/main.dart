import 'package:flutter/material.dart';
import 'utils/routes.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'widgets/themes.dart';

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
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (BuildContext context) => const LoginPage(),
        MyRoutes.homeRoute: (BuildContext context) => const HomePage(),
        MyRoutes.loginRoute: (BuildContext context) => const LoginPage(),
      },
    );
  }
}
