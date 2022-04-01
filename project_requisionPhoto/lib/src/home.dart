import "package:flutter/material.dart";
import 'package:project_requision/src/test.dart';
import "login.dart";

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(80),
          child: Column(
            children: [
              const Text(
                "Bem vindo ao app",
                style: TextStyle(fontSize: 22),
              ),
              Container(height: 50),
              Container(
                height: 50,
                child: ElevatedButton(
                  child: const Text("Fazer login"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => loginPage()));
                  },
                ),
              ),
              Container(
                height: 50,
              ),
              Container(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => testPage(),
                          ));
                    },
                    child: const Text("Ir para TestPage"),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
