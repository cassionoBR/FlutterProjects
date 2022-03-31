import "package:flutter/material.dart";

class loginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Container(
        padding: const EdgeInsets.all(80),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(hintText: "Usuário"),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Usuário inválido";
                }
                return null;
              },
            ),
            Container(
              height: 20,
            ),
            TextFormField(
              decoration: const InputDecoration(hintText: "Senha"),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Senha inválida";
                } else if (value.length < 8) {
                  return "Minimo 8 caracteres";
                }
                return null;
              },
            ),
            Container(
              height: 80,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Entrar"),
            )
          ],
        ),
      ),
    );
  }
}
