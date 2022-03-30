import "package:flutter/material.dart";

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: RaisedButton(
      child: const Text("Mostrar"),
      onPressed: () {
        var snackBar = SnackBar(
          content: Text("Testeando 1...2...3..."),
          action: SnackBarAction(label: "Desfazer", onPressed: () {}),
        );
        Scaffold.of(context).showSnackBar(snackBar);
      },
    ));
  }
}
