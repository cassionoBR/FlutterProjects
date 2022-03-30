import "package:flutter/material.dart";
import 'package:project_navegar_em_telas/src/help.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
          child: ElevatedButton(
        child: Text("Ir para a tela Help"),
        onPressed: () {
          Navigator.pushNamed(context, "/help",
              arguments: ScreenArguments("titulo", "Mensagem"));
        },
      )),
    );
  }
}
