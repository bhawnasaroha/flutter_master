import 'package:flutter/material.dart';
import 'package:flutter_master/home_page.dart';

void main() {
  runApp(const FlutterMaster());
}

class FlutterMaster extends StatelessWidget {
  const FlutterMaster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}
