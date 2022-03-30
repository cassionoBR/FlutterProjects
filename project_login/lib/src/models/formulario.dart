import "package:flutter/material.dart";

class formulario extends StatefulWidget {
  @override
  _formulario createState() => _formulario();
}

class _formulario extends State<formulario> {
  final _formkey = GlobalKey<FormState>();

  String? username = '';
  String? senha = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(hintText: "Usuário"),
            validator: (value) {
              if (value!.isEmpty) {
                return "ERROR! Informe um usuário!";
              }
              return null;
            },
            onSaved: (txt) {
              setState(() {
                username = txt;
              });
            },
          ),
          Container(
            height: 30,
          ),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(hintText: "Senha"),
            validator: (value) {
              if (value!.isEmpty) {
                return "ERROR! Campo em branco, digite uma senha!";
              } else if (value.length < 4) {
                return "Minimo de 4 caracters";
              }
              return null;
            },
            onSaved: (txt) {
              setState(() {
                senha = txt;
              });
            },
          ),
          Container(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                if (_formkey.currentState!.validate()) {
                  _formkey.currentState!.save();
                }
              },
              child: const Text("Entrar")),
          Text("E-mail: $username\nSenha: $senha")
        ],
      ),
    );
  }
}
