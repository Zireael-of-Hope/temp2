import 'package:flutter/widgets.dart';

class MyTable extends StatelessWidget {
  const MyTable({super.key, required this.listForTable, required this.tailRow});

  final List<TableRowCustom> listForTable;
  final List<String> tailRow;

  @override
  Widget build(BuildContext context) {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      border: TableBorder.all(),
      columnWidths: const <int, TableColumnWidth>{
        0: FixedColumnWidth(35),
        1: FixedColumnWidth(55),
        2: FixedColumnWidth(55),
        3: FixedColumnWidth(55),
        4: FixedColumnWidth(55),
        5: FixedColumnWidth(55),
        6: FixedColumnWidth(55),
        7: FixedColumnWidth(55),
        8: FixedColumnWidth(75),
      },
      children: addTail(addHat(getAllTebleRows(listForTable)), tailRow),
    );
  }
}

List<TableRow> getAllTebleRows(List<TableRowCustom> listForTable) {
  return listForTable
      .map(
        (e) => TableRow(children: [
          Text(
            e.num.toString(),
            textAlign: TextAlign.center,
          ),
          Text(
            '${e.m1[0]} / ${e.m1[1]}',
            textAlign: TextAlign.center,
          ),
          Text(
            '${e.m2[0]} / ${e.m2[1]}',
            textAlign: TextAlign.center,
          ),
          Text(
            '${e.m3[0]} / ${e.m3[1]}',
            textAlign: TextAlign.center,
          ),
          Text(
            '${e.m4[0]} / ${e.m4[1]}',
            textAlign: TextAlign.center,
          ),
          Text(
            '${e.m5[0]} / ${e.m5[1]}',
            textAlign: TextAlign.center,
          ),
          Text(
            '${e.m6[0]} / ${e.m6[1]}',
            textAlign: TextAlign.center,
          ),
          Text(
            '${e.m7[0]} / ${e.m7[1]}',
            textAlign: TextAlign.center,
          ),
          Text(
            e.tog.toString(),
            textAlign: TextAlign.center,
          ),
        ]),
      )
      .toList();
}

List<TableRow> addHat(List<TableRow> table,
    {List<String> heads = const [
      'd',
      '1',
      '2',
      '3',
      '4',
      '5',
      '6',
      '7',
      'Toж',
    ]}) {
  table.insert(
    0,
    TableRow(
      children: heads
          .map((e) => Text(
                e,
                textAlign: TextAlign.center,
              ))
          .toList(),
    ),
  );
  return table;
}

List<TableRow> addTail(List<TableRow> table, List<String> tailRow) {
  table.insert(
    table.length,
    TableRow(
      children: tailRow
          .map((e) => Text(
                e,
                textAlign: TextAlign.center,
              ))
          .toList(),
    ),
  );
  return table;
}

class TableRowCustom {
  final int num;
  final List<int> m1;
  final List<int> m2;
  final List<int> m3;
  final List<int> m4;
  final List<int> m5;
  final List<int> m6;
  final List<int> m7;
  final int tog;
  TableRowCustom(this.num, this.m1, this.m2, this.m3, this.m4, this.m5, this.m6,
      this.m7, this.tog);
}
