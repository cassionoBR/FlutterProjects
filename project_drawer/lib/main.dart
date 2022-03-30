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
            title: Text("MyApp"),
          ),
          body: ListView(
            children: [
              Column(
                children: const [Text("Menu")],
              )
            ],
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                const DrawerHeader(
                  child: Text("Opções"),
                  decoration: BoxDecoration(color: Colors.black),
                ),
                ListTile(
                    leading: const Icon(Icons.flight_land),
                    title: const Text("Trix's airplane"),
                    subtitle: const Text('The airplane is only in Act II.'),
                    onTap: () {})
              ],
            ),
          ),
        ));
  }
}
