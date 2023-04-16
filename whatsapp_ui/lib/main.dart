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
        appBar: _buildAppBar(),
        body: _buildTabView(),
        floatingActionButton: _buildFloatingActionButton(),
        // bottomNavigationBar: BottomNavigationBar(
        //   currentIndex: 1,
        //   backgroundColor: Colors.pink,
        //   items: [
        //     BottomNavigationBarItem(
        //         icon: Icon(Icons.people), label: 'Friends'),
        //     BottomNavigationBarItem(
        //         icon: Icon(Icons.nature_people), label: 'Pending')
        //   ],
        // )
      ),
    );
  }

  FloatingActionButton _buildFloatingActionButton() {
    return FloatingActionButton(
      onPressed: _doNothing,
      child: Icon(Icons.add),
    );
  }

  TabBarView _buildTabView() {
    return TabBarView(
      children: [
        Container(
          color: Colors.pink,
          child: Center(child: Text("Calls Tab")),
        ),
        // Container(
        //   color: Colors.white,
        //   child: Center(child: Text("Chats Tab")),
        // ),
        _ChatsTabView(),
        Container(
          color: Colors.amber,
          child: Center(child: Text("Contacts Tab")),
        ),
      ],
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
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
    );
  }
}

class _ChatsTabView extends StatelessWidget {
  final List items;
  const _ChatsTabView(this.items);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text('hello'),
        Text('hello2'),
        Text('hello3'),
      ],
    );
  }
}
