import "package:flutter/material.dart";

class Contador extends ChangeNotifier {
  @override
  _Contador createState() => _Contador();
}

class _Contador extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contador"),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: const [Text("Teste 3.. 2.. 1..")],
          ),
        ),
      ),
    );
  }
}
