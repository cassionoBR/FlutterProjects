import "package:flutter/material.dart";
import 'package:project_tab_bar/src/help.dart';
import 'package:project_tab_bar/src/home.dart';

class homeTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.help)),
            ]),
          ),
          body: TabBarView(
            children: [homePage(), help()],
          ),
        ));
  }
}
