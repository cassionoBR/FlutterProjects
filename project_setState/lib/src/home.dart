import "package:flutter/material.dart";

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int contagem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            const Text("Contagem:"),
            Text(contagem.toString()),
            ElevatedButton(
              child: const Text("Aumentar"),
              onPressed: () {
                setState(() {
                  contagem++;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
