import "package:flutter/material.dart";

class welcomeHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bem vindo(a)"),
      ),
      body: Center(
          child: ElevatedButton(
        child: const Text("Fazer Login"),
        onPressed: () {
          Navigator.pushNamed(context, "/home");
        },
      )),
    );
  }
}
