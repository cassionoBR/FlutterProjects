import "package:flutter/material.dart";
import 'package:project_tab_bar/src/homeTabBar.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(brightness: Brightness.dark), home: homeTabBar());
  }
}
