import "package:flutter/material.dart";
import "src/home.dart";
import "src/test.dart";
import "src/login.dart";

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Home Page"),
        ),
      ),
      routes: {
        "/home": (context) => homePage(),
        "/login": (context) => loginPage(),
        "/test": (context) => testPage(),
      },
      initialRoute: "/home",
    );
  }
}
