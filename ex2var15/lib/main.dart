import 'package:ex2var15/Pages/my_rule.dart';
import 'package:ex2var15/Pages/start.dart';
import 'package:ex2var15/Pages/rule1.dart';
import 'package:ex2var15/Pages/rule2.dart';
import 'package:ex2var15/Pages/rule3.dart';
import 'package:ex2var15/Pages/rule4.dart';
import 'package:ex2var15/bloc/bloc.dart';
import 'package:ex2var15/bloc/bloc_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainBloc(),
      child: BlocBuilder<MainBloc, MainState>(builder: (context, state) {
        switch (state.runtimeType) {
          case InitialState:
            return Start(listForTable: (state as InitialState).tableRowList,
            listForTable1: state.tableRowList1, tailRow1: state.tableTail1,
            listForTable2: state.tableRowList2, tailRow2: state.tableTail2,
            listForTable3: state.tableRowList3, tailRow3: state.tableTail3,
            listForTable4: state.tableRowList4, tailRow4: state.tableTail4,
            listForTable5: state.tableRowList5, tailRow5: state.tableTail5,);
          case TableRule1:
            return PageRule1(listForTable: (state as TableRule1).tableRowList, tailRow: state.tableTail);
          case TableRule2:
            return PageRule2(listForTable: (state as TableRule2).tableRowList, tailRow: state.tableTail);
          case TableRule3:
            return PageRule3(listForTable: (state as TableRule3).tableRowList, tailRow: state.tableTail);
          case TableRule4:
            return PageRule4(listForTable: (state as TableRule4).tableRowList, tailRow: state.tableTail);
          case TableMyRule:
            return PageMyRule(listForTable: (state as TableMyRule).tableRowList, tailRow: state.tableTail);
          default:
            throw Exception(
                'Wrong state type has been returned from LoginBloc: ${state.runtimeType}');
        }
      }),
    );
  }
}
