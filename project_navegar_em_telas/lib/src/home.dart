import "package:flutter/material.dart";

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
          child: RaisedButton(
        child: Text("Ir para a tela Help"),
        onPressed: () {
          Navigator.pushNamed(context, "/help");
        },
      )),
    );
  }
}
