import 'package:ex2var15/WIdgets/TableStart.dart';
import 'package:ex2var15/WIdgets/table.dart';

abstract class MainState {}

class InitialState extends MainState {
  List<TableRowCustomStart> tableRowList;
  List<TableRowCustom> tableRowList1;
  List<String> tableTail1;
  List<TableRowCustom> tableRowList2;
  List<String> tableTail2;
  List<TableRowCustom> tableRowList3;
  List<String> tableTail3;
  List<TableRowCustom> tableRowList4;
  List<String> tableTail4;
  List<TableRowCustom> tableRowList5;
  List<String> tableTail5;
  InitialState(
      this.tableRowList,
      this.tableRowList1,
      this.tableTail1,
      this.tableRowList2,
      this.tableTail2,
      this.tableRowList3,
      this.tableTail3,
      this.tableRowList4,
      this.tableTail4,
      this.tableRowList5,
      this.tableTail5);
}

class TableRule1 extends MainState {
  List<TableRowCustom> tableRowList;
  List<String> tableTail;
  TableRule1(this.tableRowList, this.tableTail);
}

class TableRule2 extends MainState {
  List<TableRowCustom> tableRowList;
  List<String> tableTail;
  TableRule2(this.tableRowList, this.tableTail);
}

class TableRule3 extends MainState {
  List<TableRowCustom> tableRowList;
  List<String> tableTail;
  TableRule3(this.tableRowList, this.tableTail);
}

class TableRule4 extends MainState {
  List<TableRowCustom> tableRowList;
  List<String> tableTail;
  TableRule4(this.tableRowList, this.tableTail);
}

class TableMyRule extends MainState {
  List<TableRowCustom> tableRowList;
  List<String> tableTail;
  TableMyRule(this.tableRowList, this.tableTail);
}
