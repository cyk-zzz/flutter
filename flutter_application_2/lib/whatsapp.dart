import 'package:flutter/material.dart';

class Whatsapp extends StatelessWidget {
  const Whatsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp Clone',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        initialIndex: 1,
        child: Scaffold(
          appBar: AppBar(
              leading: const IconButton(
                icon: Icon(Icons.menu),
                onPressed: null,
              ),
              title: const Text("Whatsapp"),
              actions: const <Widget>[
                IconButton(
                  icon: Icon(Icons.abc),
                  onPressed: null,
                ),
                IconButton(icon: Icon(Icons.ac_unit), onPressed: null),
              ],
              bottom: const TabBar(tabs: [
                Tab(
                  text: "hi",
                  icon: Icon(Icons.hub),
                ),
                Tab(
                  text: "bye",
                  icon: Icon(Icons.handshake),
                ),
              ])),
          body: TabBarView(children: [
            Container(color: Colors.red, child: const Text("Fuck")),
            Container(color: Colors.blue, child: const Text("Fuk")),
          ]),
        ));
  }
}
