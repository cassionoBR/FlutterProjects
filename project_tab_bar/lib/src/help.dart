import "package:flutter/material.dart";

class help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: const Text("Ajuda"),
        onPressed: () {
          var snackBar = SnackBar(
            content: const Text("App em criação..."),
            action: SnackBarAction(
              label: "Fechar",
              onPressed: () {},
            ),
          );
          Scaffold.of(context).showSnackBar(snackBar);
        },
      ),
    );
  }
}
