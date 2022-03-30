import "package:flutter/material.dart";
import 'package:project_navegar_em_telas/src/help.dart';
import 'package:project_navegar_em_telas/src/home.dart';

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
            children: [HomePage(), help()],
          ),
        ));
  }
}
