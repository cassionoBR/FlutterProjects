import "package:flutter/material.dart";
import 'package:project_navegar_em_telas/src/models/contador.dart';
import "package:provider/provider.dart";

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Container(
        child: Column(
          children: [
            const Text("Contagem:"),
            Consumer<contador>(
                builder: (context, contador, child) =>
                    Text(contador.valor.toString())),
            ElevatedButton(
              child: const Text("Aumentar"),
              onPressed: () {
                Provider.of<contador>(context, listen: false).aumentar();
              },
            ),
            ElevatedButton(
              child: const Text("Ir para tela Help"),
              onPressed: () {
                Navigator.pushNamed(context, "/help");
              },
            )
          ],
        ),
      ),
    );
  }
}
