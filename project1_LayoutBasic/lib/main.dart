import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("My App"),
            ),
            body: Column(children: [
              const Image(image: AssetImage("assets/muro.jpg")),
              Container(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Muro da lamentações",
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              "Jerusalem, Israel",
                              style: TextStyle(color: Colors.black26),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Text("7.867")
                        ],
                      )
                    ],
                  )),
              Container(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    button_on(() {}, Icons.call, "Call"),
                    button_on(() {}, Icons.location_on, "Maps"),
                    button_on(() {}, Icons.share, "Share")
                  ],
                ),
              ),
              Container(
                width: 100,
                height: 40,
              ),
              const Text(
                "O Muro das Lamentações ou Muro Ocidental é o único remanescente " +
                    "do Segundo Templo de Jerusalém que permanece de pé (516 a.C. - " +
                    "70 d.C.). Concluído por Herodes, o Grande, este templo era um " +
                    "local sagrado para o judaísmo há dois mil anos, e seus vestígios " +
                    "continuam tendo o mesmo significado hoje em dia.",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              )
            ])));
  }
}

class button_on extends StatelessWidget {
  Function onPress;
  @required
  IconData icon;
  @required
  var text;

  // ignore: use_key_in_widget_constructors
  button_on(this.onPress, this.icon, this.text);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: () {},
        child: Column(children: [
          Icon(
            icon,
            color: Colors.blue,
          ),
          Text(
            text,
            style: const TextStyle(color: Colors.black),
          )
        ]),
      ),
    );
  }
}
