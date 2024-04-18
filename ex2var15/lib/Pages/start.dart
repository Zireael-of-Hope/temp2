import 'package:ex2var15/WIdgets/TableStart.dart';
import 'package:ex2var15/WIdgets/table.dart';
import 'package:flutter/material.dart';

class Start extends StatelessWidget {
  const Start({super.key, required this.listForTable, required this.listForTable1,
  required this.tailRow1, required this.listForTable2, required this.tailRow2,
  required this.listForTable3, required this.tailRow3, required this.listForTable4,
  required this.tailRow4, required this.listForTable5, required this.tailRow5});

  final List<TableRowCustomStart> listForTable;
  final List<TableRowCustom> listForTable1;
  final List<String> tailRow1;
  final List<TableRowCustom> listForTable2;
  final List<String> tailRow2;
  final List<TableRowCustom> listForTable3;
  final List<String> tailRow3;
  final List<TableRowCustom> listForTable4;
  final List<String> tailRow4;
  final List<TableRowCustom> listForTable5;
  final List<String> tailRow5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InteractiveViewer(
        constrained: false,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Вариант 10'),
              const SizedBox(height: 20),
              MyTableStart(listForTable: listForTable),
              const SizedBox(height: 20),
              const Text('Правило 1'),
              const SizedBox(height: 20),
              MyTable(listForTable: listForTable1, tailRow: tailRow1),
              const SizedBox(height: 20),
              const Text('Правило 2'),
              const SizedBox(height: 20),
              MyTable(listForTable: listForTable2, tailRow: tailRow2),
              const SizedBox(height: 20),
              const Text('Правило 3'),
              const SizedBox(height: 20),
              MyTable(listForTable: listForTable3, tailRow: tailRow3),
              const SizedBox(height: 20),
              const Text('Правило 4'),
              const SizedBox(height: 20),
              MyTable(listForTable: listForTable4, tailRow: tailRow4),
              const SizedBox(height: 20),
              const Text('Метод перебора'),
              const SizedBox(height: 20),
              MyTable(listForTable: listForTable5, tailRow: tailRow5),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
