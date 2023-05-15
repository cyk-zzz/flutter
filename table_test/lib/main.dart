import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final tbl = MyTable();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: tbl,
            ),
          ],
        ),
      ),
    );
  }
}

class MyTable extends StatefulWidget {
  const MyTable({super.key});
  @override
  State<MyTable> createState() => MyTableState();
}

class MyTableState extends State<MyTable> {
  final tr = <TableRow>[];

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();

    return Column(
      children: [
        Table(
            border: TableBorder.all(),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: tr),
        Container(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: textController,
            )),
        ElevatedButton(
          onPressed: () {
            debugPrint('Add ${textController.text} into the table');
            addRow(textController.text, tr, tr.length - 1);
          },
          child: const Text("Add Row"),
        )
      ],
    );
  }

  TableRow createRow(String txt, List<TableRow> trP, int idx) {
    return TableRow(children: <Widget>[
      Container(padding: const EdgeInsets.all(10), child: Text(txt)),
      Container(
          padding: const EdgeInsets.all(10),
          child: IconButton(
              onPressed: () {
                debugPrint("Remove table row, current length = $idx");
                removeRow(idx);
              },
              icon: const Icon(Icons.delete_outline_outlined)))
    ]);
  }

  void addRow(String txt, List<TableRow> trP, int idx) {
    setState(() {
      debugPrint("enter addRow() method, current length = ${trP.length}");
      trP.add(createRow(txt, trP, idx));
    });
  }

  void removeRow(int idx) {
    setState(() {
      debugPrint("enter removeRow() method, idx = $idx");
      tr.removeAt(idx);
    });
  }
}
