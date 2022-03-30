import "package:flutter/material.dart";
import 'package:project_navegar_em_telas/src/help.dart';
import 'package:project_navegar_em_telas/src/home.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      routes: {"/home": (context) => HomePage(), "/help": (context) => help()},
      initialRoute: "/home",
    );
  }
}
