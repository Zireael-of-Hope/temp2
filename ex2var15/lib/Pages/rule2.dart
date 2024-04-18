import 'package:ex2var15/WIdgets/table.dart';
import 'package:ex2var15/bloc/bloc.dart';
import 'package:ex2var15/bloc/bloc_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PageRule2 extends StatelessWidget {
  const PageRule2({super.key, required this.listForTable, required this.tailRow});

  final List<TableRowCustom> listForTable;
  final List<String> tailRow;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Правило 2'),
            const SizedBox(height: 20),
            MyTable(listForTable: listForTable, tailRow: tailRow),
            const SizedBox(height: 20),
            Row(
              children: [
                SizedBox(
                  child: ElevatedButton(
                    onPressed: () => BlocProvider.of<MainBloc>(context).add(MakeRule1()),
                    child: const Text('<- Правило 1'),
                  ),
                ),
                const SizedBox(width: 40),
                SizedBox(
                  child: ElevatedButton(
                    onPressed: () => BlocProvider.of<MainBloc>(context).add(MakeRule3()),
                    child: const Text('Правило 3 ->'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
