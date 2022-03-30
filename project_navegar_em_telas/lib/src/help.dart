import "package:flutter/material.dart";

class help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Help Page"),
      ),
      body: Center(
        child: RaisedButton(
          child: const Text("Ajuda"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
