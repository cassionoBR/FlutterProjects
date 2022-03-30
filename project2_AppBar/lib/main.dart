import "package:flutter/material.dart";

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            brightness: Brightness.dark,
            appBarTheme: const AppBarTheme(
              titleTextStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            textTheme: const TextTheme(
                bodyText2: TextStyle(color: Colors.amber, fontSize: 22))),
        home: Scaffold(
          appBar: AppBar(
            title: const Text("My first app"),
          ),
          body: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                child: const Text("Hello World"),
              )
            ],
          ),
        ));
  }
}
