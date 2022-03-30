import "package:flutter/material.dart";

class ScreenArguments {
  final String title;
  final String message;

  ScreenArguments(this.title, this.message);
}

class help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ScreenArguments sa =
        ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(sa.title),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text(sa.message),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
