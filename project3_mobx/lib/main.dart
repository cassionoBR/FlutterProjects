import "package:flutter/material.dart";
import "stores/contador.dart";
import "package:flutter_mobx/flutter_mobx.dart";

part "pages/home.dart";
part "pages/sobre.dart";

final contador = Contador();

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
        ),
      ),
      routes: {
        "/home": (context) => home(),
        "/sobre": (context) => sobrePage()
      },
      initialRoute: "/home",
    );
  }
}
