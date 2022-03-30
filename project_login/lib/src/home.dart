import "package:flutter/material.dart";
import 'package:project_login/src/models/formulario.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Área do usuário"),
      ),
      body: Container(
        padding: const EdgeInsets.all(60),
        child: Column(
          children: [formulario()],
        ),
      ),
    );
  }
}
