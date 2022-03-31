import "package:flutter/material.dart";
import 'package:project_consumo/pages/home.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ),
      ),
      routes: {"/home": (context) => homeScreen()},
      initialRoute: "/home",
    ));
  }
}
