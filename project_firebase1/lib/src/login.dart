import "package:flutter/material.dart";

class LoginPage extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

class _Login extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.fromLTRB(70, 40, 70, 40),
          child: Column(
            children: [
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            icon: Icon(Icons.person), hintText: "Usuário"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Usuário inválido";
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            icon: Icon(Icons.password), hintText: "Senha"),
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Senha inválida";
                          }
                          if (value.length < 8) {
                            return "Senha inválida";
                          }
                          return null;
                        },
                      )
                    ],
                  )),
              Container(
                height: 30,
              ),
              ElevatedButton(
                child: const Text("Fazer login"),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
