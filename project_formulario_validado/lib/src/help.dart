import "package:flutter/material.dart";
import 'package:project_navegar_em_telas/src/models/contador.dart';
import 'package:provider/provider.dart';

class help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Help"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Consumer<contador>(
              builder: (context, contador, child) =>
                  Text("Contagem: ${contador.valor}")),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
