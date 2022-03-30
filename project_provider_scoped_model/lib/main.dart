import "package:flutter/material.dart";
import 'package:project_navegar_em_telas/src/help.dart';
import 'package:project_navegar_em_telas/src/home.dart';
import 'package:provider/provider.dart';
import "src/models/contador.dart";

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (context) => contador())],
    child: myApp(),
  ));
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
