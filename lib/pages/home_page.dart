import 'package:flutter/material.dart';
import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final String name = "mani";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Flutter Master",
          style: TextStyle(
            fontSize: 22,
          ),
        ),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to 30 days of Flutter by $name"),
        ),
      ),
      drawer: FMDrawer(),
    );
  }
}
