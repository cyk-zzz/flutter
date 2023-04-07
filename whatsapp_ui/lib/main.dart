import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        title: "Whatsapp Clone",
        theme: ThemeData(primarySwatch: Colors.teal),
        home: Home(),
      ),
    );

class Home extends StatelessWidget {
  const Home({super.key});
  void _doNothing() {}

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: _doNothing,
          ),
          title: Text("Whatsapp"),
          actions: <Widget>[
            IconButton(onPressed: _doNothing, icon: Icon(Icons.menu)),
            IconButton(onPressed: _doNothing, icon: Icon(Icons.message)),
            IconButton(onPressed: _doNothing, icon: Icon(Icons.more_vert)),
          ],
          bottom: TabBar(tabs: [
            Tab(text: "CALLS", icon: Icon(Icons.call)),
            Tab(text: "CHATS", icon: Icon(Icons.chat)),
            Tab(text: "CONTACTS", icon: Icon(Icons.contacts)),
          ]),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.pink,
              child: Center(child: Text("Calls Tab")),
            ),
            Container(
              color: Colors.white,
              child: Center(child: Text("Chats Tab")),
            ),
            Container(
              color: Colors.amber,
              child: Center(child: Text("Contacts Tab")),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _doNothing,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
