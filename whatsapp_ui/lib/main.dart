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
    return Scaffold(
      appBar: AppBar(
        title: Text("Whatsapp"),
      ),
      body: FlutterLogo(
        size: double.infinity,
      ),
    );
  }
}
