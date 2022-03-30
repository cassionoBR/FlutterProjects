import "package:flutter/material.dart";

class formulario extends StatefulWidget {
  @override
  _formulario createState() => _formulario();
}

class _formulario extends State<formulario> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(hintText: "Digite seu nome"),
            validator: (value) {
              if (value!.isEmpty) {
                return "Você precisa digitar algo";
              }
              return null;
            },
          ),
          ElevatedButton(
            child: Text("Enviar"),
            onPressed: () {
              if (_formkey.currentState!.validate()) {
                print("Validado!");
              }
            },
          )
        ],
      ),
    );
  }
}
