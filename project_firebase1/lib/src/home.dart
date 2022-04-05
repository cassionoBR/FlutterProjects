import "package:flutter/material.dart";
import 'package:project_firebase1/src/help.dart';
import "login.dart";
import "help.dart";
import "firebase/consulta.dart";

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
      ),
      body: Center( 
          child: Container(
        padding: const EdgeInsets.all(100),
        child: Column(
          children: [
            const Text(
              "Bem vindo(a)",
              style: TextStyle(fontSize: 22),
            ),
            Container(
              height: 40,
            ),
            ElevatedButton(
                child: const Text("Login"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                }),
            ElevatedButton(
                child: const Text("Help"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HelpPage()));
                }),
            ElevatedButton(
              child: const Text("Consulta Firebase"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FirebaseConsultaPage()),
                );
              },
            )
          ],
        ),
      )),
    );
  }
}
