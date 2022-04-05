import "package:flutter/material.dart";

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Help")),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(40),
            child: const Text("Aplicativo em desenvolvimento"),
          ),
        ));
  }
}
