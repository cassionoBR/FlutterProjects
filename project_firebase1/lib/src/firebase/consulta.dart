import "package:flutter/material.dart";
import "package:firebase_database/firebase_database.dart";
import "../entities/pessoas.dart";

class FirebaseConsultaPage extends StatefulWidget {
  @override
  _FirebaseConsultaPage createState() => _FirebaseConsultaPage();
}

class _FirebaseConsultaPage extends State<FirebaseConsultaPage> {
  List<Pessoa> pessoas = [];

  DatabaseReference dbRef = FirebaseDatabase.instance.ref("users");

  consultar() async {
    dbRef.once().then((event) {
      setState(() {
        if (event.snapshot.value != null) {
          setState(() {
            print(event.snapshot.key);
            var temp = event.snapshot.value as Map<String, dynamic>;
            int cont = 0;
            while (cont < temp.length) {
              String idade = temp[0];
              String name = temp[1];
              final pes = Pessoa(idade: idade, name: name);
              pessoas.add(pes);
              cont++;
            }
            pessoas.forEach((element) {
              print(element.toJSON());
            });
          });
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Firebase Consulta"),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
              child: const Text("Consultar"),
              onPressed: () {
                consultar();
              }),
        ],
      )),
    );
  }
}
