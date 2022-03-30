import "package:flutter/material.dart";
import "src/home.dart";

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("MyApp"),
            ),
            body: homePage()));
  }
}
