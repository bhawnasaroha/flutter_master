import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final String name = "mani";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Master"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to 30 days of Flutter by $name"),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
