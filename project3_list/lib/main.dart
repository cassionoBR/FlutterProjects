import "package:flutter/material.dart";

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
            title: Text("My App"),
          ),
          body: ListView(
            children: const [
              ListTile(
                title: Text("Olá"),
                leading: Icon(Icons.map),
                trailing: Icon(Icons.share),
              ),
              ListTile(
                title: Text("hello"),
                leading: Icon(Icons.map),
                trailing: Icon(Icons.share),
              ),
              ListTile(
                title: Text("hola"),
                leading: Icon(Icons.map),
                trailing: Icon(Icons.share),
              ),
              ListTile(
                title: Text("saionara"),
                leading: Icon(Icons.map),
                trailing: Icon(Icons.share),
              )
            ],
          )),
    );
  }
}
