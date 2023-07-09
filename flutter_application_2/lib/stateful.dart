import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Clone',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color _color = Colors.black;
  set color(value) => setState(() {
        _color = value;
      });

  double _size = 10;
  set size(value) => setState(() {
        _size = value;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "Hello World",
        style: TextStyle(
          color: _color,
          fontSize: _size,
        ),
      )),
      floatingActionButton:
          Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
        FloatingActionButton.extended(
          onPressed: () {
            color = Colors.red;
          },
          label: const Text("Red"),
          backgroundColor: Colors.red,
        ),
        FloatingActionButton.extended(
          label: const Text("Blue"),
          backgroundColor: Colors.blue,
          onPressed: () {
            color = Colors.blue;
          },
        ),
      ]),
      bottomSheet: SizedBox(
        height: 100,
        child: Slider(
          value: _size,
          min: 10,
          max: 100,
          onChanged: (value) => size = value,
        ),
      ),
    );
  }
}
