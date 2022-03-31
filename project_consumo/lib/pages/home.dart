import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "../stores/consumo_list.dart";

final consumos = ConsumoList();

class homeScreen extends StatefulWidget {
  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  double consumo = 0;

  void _handleConsumoField(String txt) {
    setState(() {
      if (txt != "") {
        consumo = double.parse(txt);
      } else {
        consumo = 0;
      }
    });
  }

  void _handleRegistrar() {
    if (consumo > 0) {
      consumos.addConsumo(consumo);
    }
  }

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
          appBar: AppBar(),
          body: Observer(
              builder: (_) => Column(
                    children: [
                      TextField(
                        autofocus: true,
                        decoration: const InputDecoration(
                            hintText: "Qual foi o consumo da viagem?"),
                        keyboardType: TextInputType.number,
                        onChanged: _handleConsumoField,
                      ),
                      ElevatedButton(
                        child: Text("Enviar ${consumo}"),
                        onPressed: () {
                          _handleRegistrar();
                        },
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Column(
                            children: [
                              const Text("Consumos registrados"),
                              Text("${consumos.list.length}")
                            ],
                          )),
                          Expanded(
                              child: Column(
                            children: [
                              const Text("Consumo médio geral"),
                              Text("${consumos.media().toStringAsFixed(2)}")
                            ],
                          ))
                        ],
                      ),
                      Container(
                        height: 100,
                      ),
                      Container(
                        height: 200,
                        child: ListView.builder(
                          itemCount: consumos.list.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Row(
                              children: [
                                Text("${index + 1} - ${consumos.list[index]}")
                              ],
                            );
                          },
                        ),
                      )
                    ],
                  ))),
    ));
  }
}
