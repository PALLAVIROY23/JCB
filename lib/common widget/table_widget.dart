import 'package:flutter/material.dart';
class TableWidget extends StatefulWidget {
  const TableWidget({super.key});

  @override
  State<TableWidget> createState() => _TableWidgetState();
}

class _TableWidgetState extends State<TableWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 22),
        child: Column(
          children: [
            Table(border: TableBorder.all(), children: [
            const TableRow(children: [
              Text('Column 1'),
              Text('Column 2'),
            ]),
            TableRow(children: [
              const Text('Entry 1'),
              Table(border: TableBorder.all(), children: const [
                TableRow(children: [
                  Text('Nested Entry 1'),
                  Text('Nested Entry 2'),
                ]),
                TableRow(children: [
                  Text('Nested Entry 3'),
                  Text('Nested Entry 4'),
                ]),
              ]),
            ]),
          ]),
            ]
        ),
      ),

    );
  }
}
