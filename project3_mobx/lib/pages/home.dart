part of "../main.dart";

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ),
        body: Observer(
          builder: (_) => Center(
            child: Column(
              children: [
                const Text("Contagem"),
                Text("${contador.valor}"),
                ElevatedButton(
                  child: const Text("Aumentar"),
                  onPressed: () {
                    contador.setValor();
                  },
                ),
                Container(
                  height: 260,
                ),
                ElevatedButton(
                  child: Text("Sobre"),
                  onPressed: () {
                    Navigator.pushNamed(context, "/sobre");
                  },
                )
              ],
            ),
          ),
        ));
  }
}
