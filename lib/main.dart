import 'package:flutter/material.dart';
import 'package:tab_bar/Fragment.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tab Bar With Fragment"),
            centerTitle: true,
            bottom: TabBar(
              /* isScrollable: true,*/
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: "Home",
                ),
                Tab(
                  icon: Icon(Icons.email),
                  text: "Email",
                ),
                Tab(
                  icon: Icon(Icons.search),
                  text: "Search",
                ),
                Tab(
                  icon: Icon(Icons.print),
                  text: "Print",
                ),
                Tab(
                  icon: Icon(Icons.alarm),
                  text: "Alarm",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Fragment(),
            ],
          ),
        ));
  }
}
