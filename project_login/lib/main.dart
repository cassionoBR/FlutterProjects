import "package:flutter/material.dart";
import 'package:project_login/src/home.dart';
import 'package:project_login/src/welcomehome.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      routes: {
        "/welcomehome": (context) => welcomeHome(),
        "/home": (context) => HomePage()
      },
      initialRoute: "/welcomehome",
    );
  }
}
