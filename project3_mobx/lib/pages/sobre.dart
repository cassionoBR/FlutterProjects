part of "../main.dart";

class sobrePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Informações")),
        body: Observer(
            builder: (_) => Center(
                  child: Column(
                    children: [Text("Contagem: ${contador.valor}")],
                  ),
                )));
  }
}
