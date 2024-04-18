import 'package:flutter/widgets.dart';

class MyTableStart extends StatelessWidget {
  const MyTableStart({super.key, required this.listForTable});

  final List<TableRowCustomStart> listForTable;

  @override
  Widget build(BuildContext context) {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      border: TableBorder.all(),
      columnWidths: const <int, TableColumnWidth>{
        0: FixedColumnWidth(27),
        1: FixedColumnWidth(27),
        2: FixedColumnWidth(27),
        3: FixedColumnWidth(27),
        4: FixedColumnWidth(27),
        5: FixedColumnWidth(27),
        6: FixedColumnWidth(27),
        7: FixedColumnWidth(27),
        8: FixedColumnWidth(27),
        9: FixedColumnWidth(27),
        10: FixedColumnWidth(27),
        11: FixedColumnWidth(27),
        12: FixedColumnWidth(27),
        13: FixedColumnWidth(27),
        14: FixedColumnWidth(27),
        15: FixedColumnWidth(32),
      },
      children: addHat(getAllTebleRows(listForTable)),
    );
  }
}

List<TableRow> getAllTebleRows(List<TableRowCustomStart> listForTable) {
  return listForTable
      .map((e) => TableRow(children: [
            Text(
              e.num.toString(),
              textAlign: TextAlign.center,
            ),
            Text(
              e.m1.toString(),
              textAlign: TextAlign.center,
            ),
            Text(
              e.m2.toString(),
              textAlign: TextAlign.center,
            ),
            Text(
              e.m3.toString(),
              textAlign: TextAlign.center,
            ),
            Text(
              e.m4.toString(),
              textAlign: TextAlign.center,
            ),
            Text(
              e.m5.toString(),
              textAlign: TextAlign.center,
            ),
            Text(
              e.m6.toString(),
              textAlign: TextAlign.center,
            ),
            Text(
              e.m7.toString(),
              textAlign: TextAlign.center,
            ),
            Text(
              e.pi1.toString(),
              textAlign: TextAlign.center,
            ),
            Text(
              e.pi2.toString(),
              textAlign: TextAlign.center,
            ),
            Text(
              e.L.toString(),
              textAlign: TextAlign.center,
            ),
            Text(
              e.queue1.toString(),
              textAlign: TextAlign.center,
            ),
            Text(
              e.queue2.toString(),
              textAlign: TextAlign.center,
            ),
            Text(
              e.queue3.toString(),
              textAlign: TextAlign.center,
            ),
            Text(
              e.queue4.toString(),
              textAlign: TextAlign.center,
            ),
            Text(
              e.myQueue.toString(),
              textAlign: TextAlign.center,
            )
          ]))
      .toList();
}

List<TableRow> addHat(List<TableRow> table, {List<String> heads = const ['d', '1', '2', '3', '4', '5', '6', '7', 'Pi1', 'Pi2', 'Li', '1', '2', '3', '4', 'rand']}) {
  table.insert(
    0,
    TableRow(
      children: heads.map((e) => Text(
          e,
          textAlign: TextAlign.center,
        )).toList(),
    ),
  );
  return table;
}

class TableRowCustomStart {
  final int num;
  final int m1;
  final int m2;
  final int m3;
  final int m4;
  final int m5;
  final int m6;
  final int m7;
  final int pi1;
  final int pi2;
  final int L;
  final int queue1;
  final int queue2;
  final int queue3;
  final int queue4;
  final int myQueue;
  TableRowCustomStart(
      this.num,
      this.m1,
      this.m2,
      this.m3,
      this.m4,
      this.m5,
      this.m6,
      this.m7,
      this.pi1,
      this.pi2,
      this.L,
      this.queue1,
      this.queue2,
      this.queue3,
      this.queue4,
      this.myQueue);
}
