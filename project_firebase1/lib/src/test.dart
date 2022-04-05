import "package:flutter/material.dart";

class TestePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("TestePage"),
          ),
          body: Center(
            child: Container(
              child: Column(
                children: const [Text("TestePage 1.. 2.. 3..")],
              ),
            ),
          )),
    );
  }
}
